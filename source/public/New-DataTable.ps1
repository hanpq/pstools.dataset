<#PSScriptInfo
{
    "VERSION":  "1.0.0.0",
    "GUID":  "a0e2a1b6-0a1d-4a6f-bf07-ff45a1d75e20",
    "FILENAME":  "New-DataTable.ps1",
    "AUTHOR":  "Hannes Palmquist",
    "CREATEDDATE":  "2020-10-13",
    "COMPANYNAME":  [

                    ],
    "COPYRIGHT":  "(c) 2020, Hannes Palmquist, All Rights Reserved"
}
PSScriptInfo#>
function New-DataTable {
    <#
    .DESCRIPTION
        Creating a DataTable object
    .PARAMETER TableName
        Defines the data table name. This property is used when referencing the table in a dataset for instance.
    .EXAMPLE
        $OrderTable = New-DataTable -TableName 'Orders'
        
        This example will create a datatable and return the datatable object. 
    #>

    [CmdletBinding()] # Enabled advanced function support
    param(
        [Parameter(Mandatory)]
        [string]
        $TableName
    )

    PROCESS {
        $DataTable = New-Object System.Data.Datatable
        $DataTable.TableName = $TableName

        # As the type DataTable is not enumerable, use the unary operator to return the DataTable as an one element array which is enumerable.
        return ,$DataTable
    }
}
#endregion
