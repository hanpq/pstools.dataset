---
external help file: pstools.dataset-help.xml
Module Name: pstools.dataset
online version:
schema: 2.0.0
---

# Add-DataSetRelation

## SYNOPSIS

## SYNTAX

```
Add-DataSetRelation [-DataSet] <DataSet> [-ParentDataTableColumn] <DataColumn>
 [-ChildDataTableColumn] <DataColumn> [-RelationName] <String> [-Passtrough] [<CommonParameters>]
```

## DESCRIPTION
Creates a relationship between to DataTable columns

## EXAMPLES

### EXAMPLE 1
```
$CustOrderRel = Add-DataSetRelation -DataSet $DataSet -ParentDataTableColumn $CustomerTable.Columns['CustomerID'] -ChildDataTableColumn $OrderTable.Columns['OrderID'] -RelationName "Rel_CustomerID_OrderID" -PassThrough
```

This command will define a relationship between the customerID column of table customertable and the orderID column of table ordertable

## PARAMETERS

### -DataSet
Provide the DataSet object

```yaml
Type: DataSet
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ParentDataTableColumn
Provide the DataTable parent column object

```yaml
Type: DataColumn
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ChildDataTableColumn
Provide the DataTable child column object

```yaml
Type: DataColumn
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RelationName
Provide a name for the relation object

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Passtrough
If the passthrough parameter is specified this function will return the created relation object

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
