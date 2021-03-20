BeforeAll {
    . (Resolve-Path -Path "$PSScriptRoot\..\..\Source\public\New-DataTable.ps1")
}

Describe -Name "New-DataTable.ps1" -Fixture {
    BeforeAll {
    }
    Context -Name 'When a valid name is supplied' {
        It -Name 'Should return a object of type DataTable' -test {
            New-DataTable -TableName 'Table1' | should -BeOfType [System.Data.Datatable]
        }
        It -Name 'Should not throw' -Test {
            { New-DataTable -TableName 'Table1' } | should -not -Throw
        }
    }
    Context -Name 'When a empty string is supplied as name' {
        It -Name 'Should throw' -test {
            { New-DataTable -TableName ''} | should -Throw
        }
    }
}


