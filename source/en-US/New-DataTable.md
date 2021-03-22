---
external help file: pstools.dataset-help.xml
Module Name: pstools.dataset
online version:
schema: 2.0.0
---

# New-DataTable

## SYNOPSIS

## SYNTAX

```
New-DataTable [-TableName] <String> [<CommonParameters>]
```

## DESCRIPTION
Creating a DataTable object

## EXAMPLES

### EXAMPLE 1
```
$OrderTable = New-DataTable -TableName 'Orders'
```

This example will create a datatable and return the datatable object.

## PARAMETERS

### -TableName
Defines the data table name.
This property is used when referencing the table in a dataset for instance.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
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
