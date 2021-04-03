<#PSScriptInfo
{
  "VERSION": "1.0.0.0",
  "GUID": "b4a4b5b4-9c01-422a-8c9f-29449413ec80",
  "FILENAME": "Add-DataSetRelation.ps1",
  "AUTHOR": "Hannes Palmquist",
  "AUTHOREMAIL": "hannes.palmquist@outlook.com",
  "CREATEDDATE": "2020-10-30",
  "COMPANYNAME": "Personal",
  "COPYRIGHT": "(c) 2020, Hannes Palmquist, All Rights Reserved"
}
PSScriptInfo#>
function Add-DataSetRelation {
    <#
    .DESCRIPTION
        Creates a relationship between to DataTable columns
    .PARAMETER DataSet
        Provide the DataSet object
    .PARAMETER ParentDataTableColumn
        Provide the DataTable parent column object
    .PARAMETER ChildDataTableColumn
        Provide the DataTable child column object
    .PARAMETER RelationName
        Provide a name for the relation object
    .PARAMETER Passtrough
        If the passthrough parameter is specified this function will return the created relation object
    .EXAMPLE
        $CustOrderRel = Add-DataSetRelation -DataSet $DataSet -ParentDataTableColumn $CustomerTable.Columns['CustomerID'] -ChildDataTableColumn $OrderTable.Columns['OrderID'] -RelationName "Rel_CustomerID_OrderID" -PassThrough
        
        This command will define a relationship between the customerID column of table customertable and the orderID column of table ordertable
    #>

    [CmdletBinding()] # Enabled advanced function support
    param(
        [Parameter(Mandatory)]
        [system.data.Dataset]
        $DataSet,
        
        [Parameter(Mandatory)]
        [System.Data.DataColumn]
        $ParentDataTableColumn,

        [Parameter(Mandatory)]
        [System.Data.DataColumn]
        $ChildDataTableColumn,

        [Parameter(Mandatory)]
        [string]
        $RelationName,

        [switch]
        $Passtrough
    )

    PROCESS {
        try {
            # Support for constrains is currently missing there for it is default disabled.
            $null = $DataSet.Relations.Add($RelationName, $ParentDataTableColumn, $ChildDataTableColumn, $false)
            if ($Passtrough) {
                $DataSet.Relations[$RelationName]
            }
        } catch {
            Write-Error -Message 'Failed to create data relation' -ErrorRecord $_
        }
    }
}
#endregion
