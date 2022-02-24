---
title: "microsoftApplicationDataAccessSettings resource type"
description: "Represents setting for allowing invoking M365 APIs using any Microsoft application (not only Microsoft Office applications)"
author: "ttomi"
ms.localizationpriority: medium
ms.prod: "insights"
doc_type: resourcePageType
---

# microsoftApplicationDataAccessSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents _settings_ to determine access to Microsoft 365 APIs from all Microsoft applications for users in an organization. When disabled, the same APIs are still accessible through Office applications in accordance with other settings.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List microsoftApplicationDataAccessSettings](../api/organizationsettings-list-microsoftapplicationdataaccess.md)|[microsoftApplicationDataAccessSettings](microsoftapplicationdataaccesssettings.md)|Get the _settings_ in an [microsoftApplicationDataAccessSettings](microsoftapplicationdataaccesssettings.md) object for displaying Microsoft application data access setting in an organization.|
|[Update microsoftApplicationDataAccessSettings](../api/microsoftapplicationdataaccesssettings-update.md)|[microsoftApplicationDataAccessSettings](microsoftapplicationdataaccesssettings.md)|Update the properties of a [microsoftApplicationDataAccessSettings](microsoftapplicationdataaccesssettings.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|isEnabledForAllMicrosoftApplications|Boolean|When set to 'true', all users in the organization are allowed to invoke any M365 API using any Microsoft application (not restricted to Microsoft Office applications only). This is the default. It is possible to disable this for only a subset of users, by use of the security AAD group identified by the GUID given in `disabledForGroup`. <br> When set to 'false', users in the organization are able to invoke M365 APIs using Microsoft Office applications _only_.|
|disabledForGroup|String|The ID of security AAD group whose members will _not_ be allowed to invoke M365 APIs using Microsoft applications not part of Microsoft Office. <br> This is only applicable if the property above is set to true.|

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
