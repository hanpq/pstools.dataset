<#PSScriptInfo
    .VERSION 1.0.0.0
    .GUID 995b18ed-ea8c-4544-b2a6-bf7a06fdab93
    .FILENAME Add-DataSetTable.ps1
    .AUTHOR Hannes Palmquist
    .AUTHOREMAIL hannes.palmquist@outlook.com
    .CREATEDDATE 2020-10-14
    .COMPANYNAME Personal
    .COPYRIGHT (c) 2020, Hannes Palmquist, All Rights Reserved
#>
function Add-DataSetTable {
    <#
    .DESCRIPTION
        Add DataTable to a DataSet
    .PARAMETER DataSet
        Supply the dataset object
    .PARAMETER DataTable
        Supply the datatable that should be added to the dataset
    .EXAMPLE
        Add-DataSetTable -DataSet $DataSet -DataTable $DataTable
        
        This example shows how to add a datatable object to a dataset
    #>

    [CmdletBinding()] # Enabled advanced function support
    param(
        [Parameter(Mandatory)]
        [system.data.Dataset]
        $DataSet,
    
        [Parameter(Mandatory)]
        [System.Data.DataTable]
        $DataTable
    )

    PROCESS {
        $DataSet.Tables.Add($DataTable)
    }
}
#endregion


