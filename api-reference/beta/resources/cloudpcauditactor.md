---
title: "cloudPcAuditActor resource type"
description: "The audit actor represented by the Microsoft Entra user and application associated with the audit event."
author: "ecmadao"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcAuditActor resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The audit actor represented by the Microsoft Entra user and application associated with the audit event.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|applicationDisplayName|String|Name of the application.|
|applicationId|String|Microsoft Entra application ID.|
|ipAddress|String|IP address.|
|remoteTenantId|String|The delegated partner tenant ID.|
|remoteUserId|String|The delegated partner user ID.|
|servicePrincipalName|String|Service Principal Name (SPN).|
|type|[cloudPcAuditActorType](#cloudpcauditactortype-values)|The actor type. Possible values include `ItPro`, `Application`, `Partner` and `UnknownFutureValue`.|
|userId|String|Microsoft Entra user ID.|
|userPermissions|String collection|List of user permissions and application permissions when the audit event was performed.|
|userPrincipalName|String|User Principal Name (UPN).|
|userRoleScopeTags|[cloudPcUserRoleScopeTagInfo](../resources/cloudpcuserrolescopetaginfo.md) collection|List of role scope tags.|

### cloudPcAuditActorType values

|Member|Description|
|:---|:---|
|itPro|Indicates the operation was triggered by an IT Pro/IT Admin.|
|application|Indicates the operation was triggered by an application.|
|partner|Indicates the operation was triggered by a partner.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

## Relationships

None.

## JSON Representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcAuditActor"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcAuditActor",
  "type": "String",
  "userPermissions": [
    "String"
  ],
  "applicationId": "String",
  "applicationDisplayName": "String",
  "userPrincipalName": "String",
  "servicePrincipalName": "String",
  "ipAddress": "String",
  "userId": "String",
  "userRoleScopeTags": [
    {
      "@odata.type": "microsoft.graph.cloudPcUserRoleScopeTagInfo",
      "displayName": "String",
      "roleScopeTagId": "String"
    }
  ],
  "remoteTenantId": "String",
  "remoteUserId": "String"
}
```
