BeforeAll {
    . (Resolve-Path -Path "$PSScriptRoot\..\..\Source\public\Add-DataTableColumn.ps1")
}

Describe -Name "Add-DataTableColumn.ps1" -Fixture {
    BeforeEach {
        $DataTable = New-Object System.Data.Datatable
        $DataTable.TableName = 'TableName'
    }
    AfterEach {
        Remove-Variable -Name 'DataTable'
    }
    Context -Name 'When calling with multiple names' {
        It -Name 'It should not throw' -Test {
            { Add-DataTableColumn -DataTable $DataTable -Names 'One', 'Two' } | should -not -Throw
        }
        It -Name 'Table should contain new columns' -Test {
            Add-DataTableColumn -DataTable $DataTable -Names 'One', 'Two'
            $DataTable.Columns.Contains('One') | should -BeTrue
            $DataTable.Columns.Contains('Two') | should -BeTrue
        }
    }
    Context -Name 'When calling with single name and caption' {
        It -Name 'It should not throw' {
            { Add-DataTableColumn -DataTable $DataTable -Names 'Three' -Caption 'ThreeCaption' } | should -not -throw
        }
        It -Name 'Table should contain new column' -Test {
            Add-DataTableColumn -DataTable $DataTable -Names 'Three' -Caption 'ThreeCaption' 
            $DataTable.Columns.Contains('Three') | should -BeTrue
        }
        It -Name 'Column should have caption' -Test {
            Add-DataTableColumn -DataTable $DataTable -Names 'Three' -Caption 'ThreeCaption' 
            $DataTable.Columns['Three'].Caption | should -be 'ThreeCaption'
        }
    }
    Context -Name 'When calling with a single name and default value' {
        It -Name 'It should not throw' {
            { Add-DataTableColumn -DataTable $DataTable -Names 'Four' -DefaultValue 'Default' } | should -not -throw
        }
        It -Name 'Table should contain new column' -Test {
            Add-DataTableColumn -DataTable $DataTable -Names 'Four' -DefaultValue 'Default'
            $DataTable.Columns.Contains('Four') | should -BeTrue
        }
        It -Name 'Column should have value default for row' -Test {
            Add-DataTableColumn -DataTable $DataTable -Names 'One', 'Two', 'Three'
            Add-DataTableColumn -DataTable $DataTable -Names 'Four' -DefaultValue 'Default'
            [void]$DataTable.Rows.Add(1, 2, 3)
            $DataTable.Rows[0].Four | should -be 'Default'
        }
    }
    Context -Name 'When calling with a single name and expression' {
        It -Name 'It should not throw' {
            Add-DataTableColumn -DataTable $DataTable -Names 'One', 'Two', 'Three'
            { Add-DataTableColumn -DataTable $DataTable -Names 'Five' -Expression "([one] + [two]) * 5" } | should -not -throw
        }
        It -Name 'Table should contain new column' -Test {
            Add-DataTableColumn -DataTable $DataTable -Names 'One', 'Two', 'Three'
            Add-DataTableColumn -DataTable $DataTable -Names 'Five' -Expression "([one] + [two]) * 5"
            $DataTable.Columns.Contains('Five') | should -BeTrue
        }
        It -Name 'Column should have calculated value for row' -Test {
            Add-DataTableColumn -DataTable $DataTable -Names 'One', 'Two', 'Three'
            Add-DataTableColumn -DataTable $DataTable -Names 'Five' -Expression "([one] + [two]) * 5"
            $object = [pscustomobject]@{
                "One"   = 1
                "Two"   = 2
                "Three" = 3
            }
            [void]$DataTable.Rows.Add(1, 2, 3)
            $DataTable.Rows[0].Five | should -be 15
        }
    }
    Context -Name 'When calling with a single name and allowdbnull' {
        It -Name 'It should not throw' {
            Add-DataTableColumn -DataTable $DataTable -Names 'One', 'Two', 'Three'
            { Add-DataTableColumn -DataTable $DataTable -Names 'Five' -AllowDBNull:$false } | should -not -throw
        }
        It -Name 'Table should contain new column' -Test {
            Add-DataTableColumn -DataTable $DataTable -Names 'One', 'Two', 'Three'
            Add-DataTableColumn -DataTable $DataTable -Names 'Five' -AllowDBNull:$false
            $DataTable.Columns.Contains('Five') | should -BeTrue
        }
        It -Name 'Column should throw when adding null value to row' -Test {
            Add-DataTableColumn -DataTable $DataTable -Names 'Four' -AllowDBNull:$true
            Add-DataTableColumn -DataTable $DataTable -Names 'Five' -AllowDBNull:$false
            [void]$DataTable.Rows.Add($null,$null)
            {$DataTable.Rows[0].Four = $null} | should -not -Throw
            {$DataTable.Rows[0].Five = $null} | should -throw
        }
    }
}

