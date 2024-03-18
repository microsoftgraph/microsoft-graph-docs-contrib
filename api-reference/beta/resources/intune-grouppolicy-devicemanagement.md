---
title: "deviceManagement resource type"
description: "Singleton entity that acts as a container for all device management functionality."
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: resourcePageType
---

# deviceManagement resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Singleton entity that acts as a container for all device management functionality.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get deviceManagement](../api/intune-grouppolicy-devicemanagement-get.md)|[deviceManagement](../resources/intune-grouppolicy-devicemanagement.md)|Read properties and relationships of the [deviceManagement](../resources/intune-grouppolicy-devicemanagement.md) object.|
|[Update deviceManagement](../api/intune-grouppolicy-devicemanagement-update.md)|[deviceManagement](../resources/intune-grouppolicy-devicemanagement.md)|Update the properties of a [deviceManagement](../resources/intune-grouppolicy-devicemanagement.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String||

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|groupPolicyConfigurations|[groupPolicyConfiguration](../resources/intune-grouppolicy-grouppolicyconfiguration.md) collection|The group policy configurations created by this account.|
|groupPolicyCategories|[groupPolicyCategory](../resources/intune-grouppolicy-grouppolicycategory.md) collection|The available group policy categories for this account.|
|groupPolicyDefinitions|[groupPolicyDefinition](../resources/intune-grouppolicy-grouppolicydefinition.md) collection|The available group policy definitions for this account.|
|groupPolicyDefinitionFiles|[groupPolicyDefinitionFile](../resources/intune-grouppolicy-grouppolicydefinitionfile.md) collection|The available group policy definition files for this account.|
|groupPolicyUploadedDefinitionFiles|[groupPolicyUploadedDefinitionFile](../resources/intune-grouppolicy-grouppolicyuploadeddefinitionfile.md) collection|The available group policy uploaded definition files for this account.|
|reports|[deviceManagementReports](../resources/intune-grouppolicy-devicemanagementreports.md)|Reports singleton|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagement"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagement",
  "id": "String (identifier)"
}
```
