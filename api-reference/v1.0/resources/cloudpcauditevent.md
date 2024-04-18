---
title: "cloudPcAuditEvent resource type"
description: "Represents the audit event entity."
author: "RuiHou105"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcAuditEvent resource type

Namespace: microsoft.graph

Represents the audit event entity.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List auditEvents](../api/virtualendpoint-list-auditevents.md)|[cloudPcAuditEvent](../resources/cloudpcauditevent.md) collection|List all the [cloudPcAuditEvent](../resources/cloudpcauditevent.md) objects in a tenant.|
|[Get cloudPcAuditEvent](../api/cloudpcauditevent-get.md)|[cloudPcAuditEvent](../resources/cloudpcauditevent.md)|Read the properties and relationships of a [cloudPcAuditEvent](../resources/cloudpcauditevent.md) object.|
|[getAuditActivityTypes function](../api/cloudpcauditevent-getauditactivitytypes.md)|String collection|Get audit activity types.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|activity|String|The friendly name of the audit activity.|
|activityDateTime|DateTimeOffset|The date time in UTC when the activity was performed. Read-only.|
|activityOperationType|[cloudPcAuditActivityOperationType](#cloudpcauditactivityoperationtype-values)|The HTTP operation type of the activity. Possible values include `create`, `delete`, `patch` and `unknownFutureValue`. Read-only.|
|activityResult|[cloudPcAuditActivityResult](#cloudpcauditactivityresult-values)|The result of the activity. Possible values include `success`, `clientError`, `failure`, `timeout` and `unknownFutureValue`. Read-only.|
|activityType|String|The type of activity that was performed. Read-only.|
|actor|[cloudPcAuditActor](../resources/cloudpcauditactor.md)|Microsoft Entra ID user and application associated with the audit event. Read-only.|
|category|[cloudPcAuditCategory](#cloudpcauditcategory-values)|The category of the audit event. Possible values include `cloudPC` and `unknownFutureValue`. Read-only.|
|componentName|String|The component name for the audit event. Read-only.|
|correlationId|String|The client request ID that is used to correlate activity within the system. Read-only.|
|displayName|String|The display name for the audit event. Read-only.|
|id|String|The unique identifier for the audit event. Read-only.|
|resources|[cloudPcAuditResource](../resources/cloudpcauditresource.md) collection|The list of cloudPcAuditResource objects. Read-only.|


### cloudPcAuditActivityOperationType values

|Member|Description|
|:---|:---|
|create|Indicates the operation used to create a target resource.|
|delete|Indicates the operation used to delete a target resource.|
|patch|Indicates the operation used to update a target resource.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

### cloudPcAuditActivityResult values

|Member|Description|
|:---|:---|
|success|Indicates the operation succeeded.|
|clientError|Indicates the operation failed with client error.|
|failure|Indicates the operation failed.|
|timeout|Indicates the operation failed with timeout.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

### cloudPcAuditCategory values

|Member|Description|
|:---|:---|
|cloudPC|Indicates that the category of the audit event is Cloud PC.|
|unknownFutureValue |Evolvable enumeration sentinel value. Don't use.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPcAuditEvent",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcAuditEvent",
  "id": "String (identifier)",
  "displayName": "String",
  "componentName": "String",
  "actor": {
    "@odata.type": "microsoft.graph.cloudPcAuditActor",
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
  },
  "activity": "String",
  "activityDateTime": "String (timestamp)",
  "activityType": "String",
  "activityOperationType": "String",
  "activityResult": "String",
  "correlationId": "String",
  "resources": [
    {
      "@odata.type": "microsoft.graph.cloudPcAuditResource",
      "displayName": "String",
      "modifiedProperties": [
        {
          "@odata.type": "microsoft.graph.cloudPcAuditProperty",
          "displayName": "String",
          "oldValue": "String",
          "newValue": "String"
        }
      ],
      "resourceId": "String"
    }
  ],
  "category": "String"
}
```
