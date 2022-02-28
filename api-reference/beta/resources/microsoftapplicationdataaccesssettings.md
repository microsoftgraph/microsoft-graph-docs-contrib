---
title: "microsoftApplicationDataAccessSettings resource type"
description: "Represents settings to determine access from Microsoft apps to Microsoft 365 data belonging to users in an organization. For example, given the proper authorization, whether only Microsoft 365 apps (such as Word and Excel) can access users' Microsoft 365 data, or whether other Microsoft apps (such as Windows), can access the data as well."
author: "ttomi"
ms.localizationpriority: medium
ms.prod: "insights"
doc_type: resourcePageType
---

# microsoftApplicationDataAccessSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents _settings_ to determine access from Microsoft applications to Microsoft 365 data belonging to users in an organization. For example, given the proper authorization, whether only Microsoft 365 apps (such as Word and Excel) can access users' Microsoft 365 data, or whether other Microsoft apps (such as Windows), can access the data as well.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List microsoftApplicationDataAccessSettings](../api/organizationsettings-list-microsoftapplicationdataaccess.md)|[microsoftApplicationDataAccessSettings](microsoftapplicationdataaccesssettings.md)|Get the _settings_ in an [microsoftApplicationDataAccessSettings](microsoftapplicationdataaccesssettings.md) object for displaying Microsoft application data access setting in an organization.|
|[Update microsoftApplicationDataAccessSettings](../api/microsoftapplicationdataaccesssettings-update.md)|[microsoftApplicationDataAccessSettings](microsoftapplicationdataaccesssettings.md)|Update the properties of a [microsoftApplicationDataAccessSettings](microsoftapplicationdataaccesssettings.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|isEnabledForAllMicrosoftApplications|Boolean|When set to 'true', all users in the organization are allowed to access M365 data using any Microsoft application (not restricted to Microsoft 365 applications only). This is the default. It is possible to disable this for only a subset of users, by use of the security AAD group identified by the GUID given in `disabledForGroup`. <br> When set to 'false', users in the organization are able to access M365 data using Microsoft 365 applications _only_.|
|disabledForGroup|String|The ID of security AAD group whose members will _not_ be allowed to access M365 data using Microsoft applications not part of Microsoft 365. <br> This is only applicable if the property above is set to true.|

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
