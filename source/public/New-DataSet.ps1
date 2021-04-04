<#PSScriptInfo
{
    "VERSION":  "1.0.0.0",
    "GUID":  "c7c7be4d-6945-47b7-8d2b-13db91142f06",
    "FILENAME":  "New-DataSet.ps1",
    "AUTHOR":  "Hannes Palmquist",
    "AUTHOREMAIL":  "hannes.palmquist@outlook.com",
    "CREATEDDATE":  "2020-10-14",
    "COMPANYNAME":  "Personal",
    "COPYRIGHT":  "(c) 2020, Hannes Palmquist, All Rights Reserved"
}
PSScriptInfo#>
function New-DataSet {
    <#
    .DESCRIPTION
        Creates a new dataset
    .EXAMPLE
        $DataSet = New-DataSet
        
        This example demonstrates how to initialize a new data set object.
    #>

    [CmdletBinding()] # Enabled advanced function support
    param(
    )
    
    PROCESS {
        try {
            New-Object -TypeName System.Data.DataSet -ErrorAction Stop
            Write-Verbose -Message 'Created DataSet'
        } catch {
            throw $_
        }
    }
}
#endregion
