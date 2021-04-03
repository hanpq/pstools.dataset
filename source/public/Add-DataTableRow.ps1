<#PSScriptInfo
{
  "VERSION": "1.0.0.0",
  "GUID": "4ab19fe0-a59e-43d7-aea8-b098a470321d",
  "FILENAME": "Add-DataTableRow.ps1",
  "AUTHOR": "Hannes Palmquist",
  "AUTHOREMAIL": "hannes.palmquist@outlook.com",
  "CREATEDDATE": "2020-10-13",
  "COMPANYNAME": "Personal",
  "COPYRIGHT": "(c) 2020, Hannes Palmquist, All Rights Reserved"
}
PSScriptInfo#>
function Add-DataTableRow {
    <#
    .DESCRIPTION
        Adds a row to a table row
    .PARAMETER DataTable
        Pass the data table object to add rows to
    .PARAMETER InputObject
        Provides an object array with objects thats 
        has properties corresponding to the table columns. 
        Note that the object can contain more properties 
        than columns, they will simply be ignored during 
        matching. On the other side, if the object is missing
        properties for all columns, the addition will fail. 
    .EXAMPLE
        Get-Service | Add-DataTableRow -DataTable $DataTable

        This example demonstrates how a preexisting object array
        can be passed to add rows.
    .EXAMPLE
        $Object = [pscustomobject]@{
            Property1 = 'Value'
            Property2 = 'Value'
            Property3 = 'Value'
        }
        Add-DataTableRow -DataTable $DateTable -InputObject $Object

        This example demonstrates how a single object can be passed to add a new row.
    #>

    [CmdletBinding()] # Enabled advanced function support
    param(
        [System.Data.DataTable]
        $DataTable,

        [Parameter(ValueFromPipeline)]
        [Object[]]
        $InputObject
    )

    PROCESS {
        $InputObject | ForEach-Object {
            $CurrentObject = $PSItem
            $NewRow = $DataTable.NewRow()
            $CurrentObject.PSObject.Properties.GetEnumerator().ForEach( { $NewRow.($PSItem.Name) = $PSItem.Value })
            [void]$DataTable.Rows.Add($NewRow)
        }
    }
}
#endregion
