BeforeAll {
    . (Resolve-Path -Path "$PSScriptRoot\..\..\Source\public\Get-DataTableRow.ps1")
}

Describe -Name "Get-DataTableRow.ps1" -Fixture {
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

        [void]$DataTable.Rows.Add(1, 2, 3)
        [void]$DataTable.Rows.Add(4, 5, 3)

    }
    AfterEach {
        Remove-Variable -Name 'DataTable'
    }
    Context -Name 'When calling with a valid query and expect single result' {
        BeforeEach {
            $Result = Get-DataTableRow -DataTable $DataTable -SQLQuery '[one] = 1'
        }
        It -Name 'Should return one row' {
            $Result | should -havecount 1
        }
        It -Name 'Should be of type DataRow' {
            $Result | should -beoftype [System.Data.DataRow]
        }
    }
    Context -Name 'When calling with a valid query and expect multi row result' {
        BeforeEach {
            $Result = Get-DataTableRow -DataTable $DataTable -SQLQuery '[Three] = 3'
        }
        It -Name 'Should return two rows' {
            $Result | should -havecount 2
        }
        It -Name 'Each row should be of type DataRow' {
            $Result[0] | should -beoftype [System.Data.DataRow]
        }
    }
    Context -Name 'When calling with a valid query and expect zero results' {
        BeforeEach {
            $Result = Get-DataTableRow -DataTable $DataTable -SQLQuery '[Three] = 6'
        }
        It -Name 'Should return zero rows' {
            $Result | should -BeNullOrEmpty
        }
    }
    Context -Name 'When calling with a invalid query' {
        It -Name 'Should throw' {
            { Get-DataTableRow -DataTable $DataTable -SQLQuery '[Three] = Foo' -ErrorAction Stop } | should -throw
        }
    }
}

