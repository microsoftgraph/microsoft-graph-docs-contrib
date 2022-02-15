---
title: "microsoftApplicationDataAccessSetting resource type"
description: "Represents setting for allowing invoking M365 APIs using any Microsoft application (not only Microsoft Office applications)"
author: "ttomi"
ms.localizationpriority: medium
ms.prod: "insights"
doc_type: resourcePageType
---

# microsoftApplicationDataAccessSetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**
Represents settings to allow invocation of internal APIs to all Microsoft applications for users in an organization.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List microsoftApplicationDataAccessSettings](../api/organizationsettings-list-microsoftapplicationdataaccess.md)|[microsoftApplicationDataAccessSetting](microsoftapplicationdataaccesssetting.md)|Get the _settings_ in an [microsoftApplicationDataAccessSetting](microsoftapplicationdataaccesssetting.md) object for displaying Microsoft application data access setting in an organization.|
|[Update microsoftApplicationDataAccessSetting](../api/microsoftapplicationdataaccesssetting-update.md)|[microsoftApplicationDataAccessSetting](microsoftapplicationdataaccesssetting.md)|Update the properties of a [microsoftApplicationDataAccessSetting](microsoftapplicationdataaccesssetting.md) object.|

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
  "@odata.type": "microsoft.graph.microsoftApplicationDataAccessSetting",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.microsoftApplicationDataAccessSetting",
  "isEnabledForAllMicrosoftApplications": "Boolean",
  "disabledForGroup": "String"
}
```
