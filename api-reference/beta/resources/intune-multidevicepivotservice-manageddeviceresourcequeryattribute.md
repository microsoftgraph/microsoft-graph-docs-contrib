---
title: "managedDeviceResourceQueryAttribute resource type"
description: "The ManagedDeviceResourceQueryAttribute complex type represents a single column from Data Platform. This can be an attribute from a Data Platform entity"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# managedDeviceResourceQueryAttribute resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The ManagedDeviceResourceQueryAttribute complex type represents a single column from Data Platform. This can be an attribute from a Data Platform entity

## Properties
|Property|Type|Description|
|:---|:---|:---|
|resourceId|String|The Kusto Query Language (KQL) version of the Intune Graph Resource's name. This name corresponds to a Kusto table and is written in PascalCase. Example: Devices. Read-only.|
|attributeId|String|The Kusto Query Language (KQL) version of the attribute's name. This name corresponds to a column within a Kusto table and is written in PascalCase. Example: DeviceType. Read-only.|
|attributeDisplayName|String|The localized name of the attribute. Example: Device type. Read-only.|
|attributeType|[managedDeviceResourceQueryAttributeType](../resources/intune-multidevicepivotservice-manageddeviceresourcequeryattributetype.md)|The KQL-supported property type. Possible values are: bool (default), datetime, decimal, guid, int, long, real, string,timespan, anchor, and enum. Read-only. Possible values are: `bool`, `datetime`, `decimal`, `guid`, `int`, `long`, `real`, `string`, `timespan`, `anchor`, `enum`, `unknownFutureValue`.|
|possibleValues|[managedDeviceResourceQueryEnumMember](../resources/intune-multidevicepivotservice-manageddeviceresourcequeryenummember.md) collection|The list of possible enums values for an enum attribute type. Read-only.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.managedDeviceResourceQueryAttribute"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedDeviceResourceQueryAttribute",
  "resourceId": "String",
  "attributeId": "String",
  "attributeDisplayName": "String",
  "attributeType": "String",
  "possibleValues": [
    {
      "@odata.type": "microsoft.graph.managedDeviceResourceQueryEnumMember",
      "enumMemberDisplayName": "String",
      "value": "String",
      "iconName": "String"
    }
  ]
}
```
