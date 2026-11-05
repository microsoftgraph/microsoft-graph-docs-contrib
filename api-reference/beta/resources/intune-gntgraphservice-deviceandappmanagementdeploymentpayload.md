---
title: "deviceAndAppManagementDeploymentPayload resource type"
description: "Represents metadata for a payload in a staged deployment."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# deviceAndAppManagementDeploymentPayload resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents metadata for a payload in a staged deployment.

Used by the **payloads** property of [deviceAndAppManagementDeployment](../resources/intune-gntgraphservice-deviceandappmanagementdeployment.md).

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|payloadDisplayName|String|The payload display name, supplied by the workload service. Maximum length is 256 characters. The default value is an empty string. Read-only.|
|payloadEntitySet|[deviceAndAppManagementPayloadEntitySetType](../resources/intune-gntgraphservice-deviceandappmanagementpayloadentitysettype.md)|The Graph entity set containing the payload. Required. The possible values are: `unknown`, `mobileApps`, `configurationPolicies`, `deviceConfigurations`, `unknownFutureValue`.|
|payloadId|String|The unique payload identifier. Required. Maximum length is 36 characters.|
|payloadUnifiedPlatform|[deviceAndAppManagementPayloadUnifiedPlatformType](../resources/intune-gntgraphservice-deviceandappmanagementpayloadunifiedplatformtype.md)|The platform computed from payload metadata. Read-only. This flagged enumeration allows multiple members to be selected simultaneously. The possible values are: `unknown`, `android`, `appleMobile`, `linux`, `macOS`, `web`, `windows`, `unknownFutureValue`.|
|workloadType|[deviceAndAppManagementWorkloadType](../resources/intune-gntgraphservice-deviceandappmanagementworkloadtype.md)|The workload type computed from payload metadata. Read-only. The possible values are: `unknown`, `deviceConfiguration`, `application`, `unknownFutureValue`.|
|payloadType (deprecated)|String|The legacy payload type. Maximum length is 50 characters. Deprecated on June 19, 2026, with removal scheduled for August 31, 2026. Use **workloadType** instead.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceAndAppManagementDeploymentPayload"
} -->
```json
{
  "@odata.type": "#microsoft.graph.deviceAndAppManagementDeploymentPayload",
  "payloadId": "String",
  "payloadDisplayName": "String",
  "payloadEntitySet": "String",
  "payloadType": "String",
  "payloadUnifiedPlatform": "String",
  "workloadType": "String"
}
```
