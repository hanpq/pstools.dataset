BeforeAll {
    . (Resolve-Path -Path "$PSScriptRoot\..\..\Source\public\New-DataSet.ps1")
}

Describe -Name "New-DataSet.ps1" -Fixture {
    BeforeAll {
    }
    Context -Name 'When calling New-DataSet' {
        It -Name 'Should not throw' -Test {
            {New-DataSet} | should -not -Throw
        }
        It -Name 'Should return a object of type DataSet' -Test {
            New-DataSet | should -BeOfType [System.Data.DataSet]
        }
        It -Name 'New-Object fails it should throw' {
            Mock -CommandName 'New-Object' -MockWith {throw}
            {New-DataSet} | should -throw
        }
    }
}

