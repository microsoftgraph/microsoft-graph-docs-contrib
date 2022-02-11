---
title: "microsoftApplicationDataAccessSettings resource type"
description: "**TODO: Add Description**"
author: "ttomi"
ms.localizationpriority: medium
ms.prod: "insights"
doc_type: resourcePageType
---

# microsoftApplicationDataAccessSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**
Represents settings to allow invocation of internal APIs to all Microsoft applications for users in an organization.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List microsoftApplicationDataAccessSettings](../api/organizationsettings-list-microsoftapplicationdataaccesssettings.md)|[microsoftApplicationDataAccessSettings](../resources/microsoftapplicationdataaccesssettings.md)|Get the _settings_ in an [microsoftApplicationDataAccessSettings](../resources/microsoftapplicationdataaccesssettings.md) object for displaying Microsoft application data access setting in an organization.|
|[Update microsoftApplicationDataAccessSettings](../api/microsoftapplicationdataaccesssettings-update.md)|[microsoftApplicationDataAccessSettings](../resources/microsoftapplicationdataaccesssettings.md)|Update the properties of a [microsoftApplicationDataAccessSettings](../resources/microsoftapplicationdataaccesssettings.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|isEnabledForAllMicrosoftApplications|Boolean|`true` if all Microsoft applications can invoke internal APIs for users; `false` if all users without exceptions in the organization are able to invoke internal APIs using ONLY Office applications. Default is `true`. Optional.|
|disabledForGroup|String|The ID of an Azure AD group, of which the specified type of insights are disabled for its members. Default is `empty`. Optional.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.microsoftApplicationDataAccessSettings",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.microsoftApplicationDataAccessSettings",
  "isEnabledForAllMicrosoftApplications": "Boolean",
  "disabledForGroup": "String"
}
```
