BeforeAll {
    . (Resolve-Path -Path "$PSScriptRoot\..\..\Source\public\Add-DataTableRow.ps1")
}

Describe -Name "Add-DataTableRow.ps1" -Fixture {
    BeforeEach {
        $DataTable = New-Object System.Data.Datatable
        $DataTable.TableName = 'TableName'

        $DataColumn = New-Object System.Data.DataColumn -ArgumentList 'One'
        $DataColumn.DataType = [Object]
        [void]$DataTable.Columns.Add($DataColumn)

        $DataColumn = New-Object System.Data.DataColumn -ArgumentList 'Two'
        $DataColumn.DataType = [Object]
        [void]$DataTable.Columns.Add($DataColumn)

        $DataColumn = New-Object System.Data.DataColumn -ArgumentList 'Three'
        $DataColumn.DataType = [Object]
        [void]$DataTable.Columns.Add($DataColumn)
    }
    AfterEach {
        Remove-Variable -Name 'DataTable'
    }
    Context -Name 'When calling with a valid object' {
        It -Name 'Should not throw' -Test {
            $object = [pscustomobject]@{"One" = 1;"Two" = 2;"Three" = 3}
            {Add-DataTableRow -DataTable $DataTable -InputObject $Object} | should -not -Throw
        }
        It -Name 'Row should have correct values' -test {
            $object = [pscustomobject]@{"One" = 1; "Two" = 2; "Three" = 3 }
            Add-DataTableRow -DataTable $DataTable -InputObject $Object
            $DataTable.Rows[0].One | should -be 1
            $DataTable.Rows[0].Two | should -be 2
            $DataTable.Rows[0].Three | should -be 3
        }
    }
}