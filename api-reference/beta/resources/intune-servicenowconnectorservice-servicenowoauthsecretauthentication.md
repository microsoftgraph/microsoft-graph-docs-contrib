---
title: "serviceNowOauthSecretAuthentication resource type"
description: "App id for the ServiceNow client app."
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: resourcePageType
---

# serviceNowOauthSecretAuthentication resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

App id for the ServiceNow client app.


Inherits from [serviceNowAuthenticationMethod](../resources/intune-servicenowconnectorservice-servicenowauthenticationmethod.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appId|String|Tenant appId registered with Azure AD|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.serviceNowOauthSecretAuthentication"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.serviceNowOauthSecretAuthentication",
  "appId": "String"
}
```
