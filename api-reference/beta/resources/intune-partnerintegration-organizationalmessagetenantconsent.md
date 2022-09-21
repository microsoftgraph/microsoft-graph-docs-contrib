---
title: "organizationalMessageTenantConsent resource type"
description: "This will allow the admin to see tenant consent info for specific tenant"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# organizationalMessageTenantConsent resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

This will allow the admin to see tenant consent info for specific tenant

## Properties
|Property|Type|Description|
|:---|:---|:---|
|firstPartyMessageAllowed|Boolean|Indicates if first party message is allowed|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.organizationalMessageTenantConsent"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.organizationalMessageTenantConsent",
  "firstPartyMessageAllowed": true
}
```





