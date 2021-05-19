---
title: "cloudPcAuditActor resource type"
description: "Represents the audit actor. The actor is AAD user and application that are associated with the audit event."
author: "ecmadao"
localization_priority: Normal
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcAuditActor resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the audit actor. The actor is AAD user and application that are associated with the audit event.

[!INCLUDE [cloudpc-api-preview](../../includes/cloudpc-api-preview.md)]

## Properties

|Property|Type|Description|
|:---|:---|:---|
|actorType|[cloudPcAuditActorType](#cloudpcauditactortype-values)|The actor type. Possible values include ItPro, Application, Partner and Unknown.|
|userPermissions|String collection|List of user permissions and application permissions when the audit event was performed.|
|applicationId|String|AAD Application Id.|
|applicationDisplayName|String|Name of the Application.|
|userPrincipalName|String|User Principal Name (UPN).|
|servicePrincipalName|String|Service Principal Name (SPN).|
|ipAddress|String|IP Address.|
|userId|String|AAD User id.|
|userRoleScopeTags|[cloudPcUserRoleScopeTagInfo](../resources/cloudpcuserrolescopetaginfo.md) collection|List of role scope tags.|
|remoteTenantId|String|The delegated partner tenant id.|
|remoteUserId|String|The delegated partner user id.|

### cloudPcAuditActorType values

|Member|Description|
|:---|:---|
|itPro|Operation took by ItPro.|
|application|Operation took by application.|
|partner|Operation took by partner.|
|unknown|Unknown actor.|

## Relationships

None.

## JSON Representation

Here is a JSON representation of the resource.
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
