<#PSScriptInfo
    .VERSION 1.0.0.0
    .GUID 6818cfc2-a6b6-47cd-bace-65ec64761930
    .FILENAME Get-DataTableRow.ps1
    .AUTHOR Hannes Palmquist
    .AUTHOREMAIL hannes.palmquist@outlook.com
    .CREATEDDATE 2020-10-13
    .COMPANYNAME Personal
    .COPYRIGHT (c) 2020, Hannes Palmquist, All Rights Reserved
#>
function Get-DataTableRow {
    <#
    .DESCRIPTION
        Retreive rows from DataTable
    .PARAMETER DataTable
        Pass the data table object to get rows from
    .PARAMETER Query
        Define a query.

        -like : like
        -gt   : >
        -lt   : <
        -eq   : =

        Values should be enclosed with single qoutation marks
        Columns should not be enclosed with quotation marks
    .EXAMPLE
        Get-DataTableRow -DataTable $DataTable -Query '[OrderID] = 123456789'
        
        This example demonstrates how to retreive rows from data table.
    
    #>

    [CmdletBinding()] # Enabled advanced function support
    param(
        [System.Data.DataTable]
        $DataTable,

        [string]
        [Alias('SQLQuery')]
        $Query
    )
    PROCESS {
        try {
            $DataTable.Select($Query)
        } catch {
            Throw $_
        }
    }
}
#endregion