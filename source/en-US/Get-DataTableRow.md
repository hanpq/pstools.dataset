---
external help file: pstools.dataset-help.xml
Module Name: pstools.dataset
online version:
schema: 2.0.0
---

# Get-DataTableRow

## SYNOPSIS

## SYNTAX

```
Get-DataTableRow [[-DataTable] <DataTable>] [[-Query] <String>] [<CommonParameters>]
```

## DESCRIPTION
Retreive rows from DataTable

## EXAMPLES

### EXAMPLE 1
```
Get-DataTableRow -DataTable $DataTable -Query '[OrderID] = 123456789'
```

This example demonstrates how to retreive rows from data table.

## PARAMETERS

### -DataTable
Pass the data table object to get rows from

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

### -Query
Define a query.

-like : like
-gt   : \>
-lt   : \<
-eq   : =

Values should be enclosed with single qoutation marks
Columns should not be enclosed with quotation marks

```yaml
Type: String
Parameter Sets: (All)
Aliases: SQLQuery

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
