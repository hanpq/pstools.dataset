BeforeAll {
    . (Resolve-Path -Path "$PSScriptRoot\..\..\Source\public\Add-DataSetTable.ps1")
}

Describe -Name "Add-DataSetTable.ps1" -Fixture {
    BeforeAll {
        $DataTable = New-Object System.Data.Datatable
        $DataTable.TableName = 'TableName'
        
        $DataSet = New-Object -TypeName System.Data.DataSet
    }
    Context -Name 'When calling with valid DataSet and DataTable' {
        It -Name 'Should not throw' -Test {
            {Add-DataSetTable -DataSet $DataSet -DataTable $DataTable} | should -not -throw
        }
        It -Name 'Dataset should contain datatable' -Test {
            $DataSet.Tables.Contains('TableName') | should -BeTrue
        }
    }
    Context -Name 'When calling with an invalid data table' {
        It -Name 'Should throw' {
            { Add-DataSetTable -DataSet $DataSet -DataTable $null } | should -throw
        }
    }
    Context -Name 'When calling with an invalid data set' {
        It -Name 'Should throw' {
            { Add-DataSetTable -DataSet $null -DataTable $DataTable } | should -throw
        }
    }
}