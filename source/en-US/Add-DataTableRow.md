---
external help file: pstools.dataset-help.xml
Module Name: pstools.dataset
online version:
schema: 2.0.0
---

# Add-DataTableRow

## SYNOPSIS

## SYNTAX

```
Add-DataTableRow [[-DataTable] <DataTable>] [[-InputObject] <Object[]>] [<CommonParameters>]
```

## DESCRIPTION
Adds a row to a table row

## EXAMPLES

### EXAMPLE 1
```
Get-Service | Add-DataTableRow -DataTable $DataTable
```

This example demonstrates how a preexisting object array
can be passed to add rows.

### EXAMPLE 2
```
$Object = [pscustomobject]@{
    Property1 = 'Value'
    Property2 = 'Value'
    Property3 = 'Value'
}
Add-DataTableRow -DataTable $DateTable -InputObject $Object
```

This example demonstrates how a single object can be passed to add a new row.

## PARAMETERS

### -DataTable
Pass the data table object to add rows to

```yaml
Type: DataTable
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InputObject
Provides an object array with objects thats 
has properties corresponding to the table columns. 
Note that the object can contain more properties 
than columns, they will simply be ignored during 
matching.
On the other side, if the object is missing
properties for all columns, the addition will fail.

```yaml
Type: Object[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
