---
title: "auditActor resource type"
description: "A class containing the properties for Audit Actor."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# auditActor resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A class containing the properties for Audit Actor.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|type|String|Actor Type.|
|auditActorType|String|Actor Type.|
|userPermissions|String collection|List of user permissions when the audit was performed.|
|applicationId|String|AAD Application Id.|
|applicationDisplayName|String|Name of the Application.|
|userPrincipalName|String|User Principal Name (UPN).|
|servicePrincipalName|String|Service Principal Name (SPN).|
|ipAddress|String|IPAddress.|
|userId|String|User Id.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.auditActor"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.auditActor",
  "type": "String",
  "auditActorType": "String",
  "userPermissions": [
    "String"
  ],
  "applicationId": "String",
  "applicationDisplayName": "String",
  "userPrincipalName": "String",
  "servicePrincipalName": "String",
  "ipAddress": "String",
  "userId": "String"
}
```
