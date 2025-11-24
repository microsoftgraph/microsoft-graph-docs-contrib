---
title: "onPremisesPublishingProfile resource type"
description: "onPremisesPublishingProfile resource type."
ms.localizationpriority: medium
author: "shahzad-khalid"
ms.subservice: "entra-applications"
doc_type: "resourcePageType"
ms.date: 11/28/2024
---

# onPremisesPublishingProfile resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Various Azure services (for example, Microsoft Entra Connect [Passthrough Authentication](/entra/identity/hybrid/connect/how-to-connect-pta), [Workday to Microsoft Entra users provisioning](/entra/identity/saas-apps/workday-inbound-tutorial), and [Application Proxy](/entra/identity/app-proxy/overview-what-is-app-proxy) allow access to various on-premises resources from outside the corporate network.

[On-premises agents](onpremisesagent.md) (or [connectors](../resources/connector.md) for Application Proxy) installed by an administrator can be configured to route requests to a particular [published resource](../resources/publishedresource.md).
[Agent groups](../resources/onpremisesagentgroup.md) (or [connector groups](../resources/connectorgroup.md) for Application Proxy) enable an administrator to assign specific agents to serve specific published on-premises resources. Administrators can also group multiple agents together, and then assign each published resource to an agent group. The entire set of entities of the same on-premises publishing type is represented by **onPremisesPublishingProfile**.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get](../api/onpremisespublishingprofile-get.md) | [onPremisesPublishingProfile](onpremisespublishingprofile.md) | Read the properties and relationships of an **onPremisesPublishingProfile** object. |
| [Update](../api/onpremisespublishingprofile-update.md) | None | Update an [onPremisesPublishingProfile](onpremisespublishingprofile.md) object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|hybridAgentUpdaterConfiguration|[hybridAgentUpdaterConfiguration](hybridagentupdaterconfiguration.md)| Represents a **hybridAgentUpdaterConfiguration** object.|
|id|String| Represents a publishing type. Possible values are: `applicationProxy`, `exchangeOnline`, `authentication`, `provisioning`, `adAdministration`. Read-only.|
|isDefaultAccessEnabled|Boolean|Specifies whether default access for app proxy is enabled or disabled.|
|isEnabled|Boolean| Represents if [Microsoft Entra application proxy](/entra/identity/app-proxy/) is enabled for the tenant. |

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|agentGroups|[onPremisesAgentGroup](onpremisesagentgroup.md) collection| List of existing **onPremisesAgentGroup** objects. Read-only. Nullable.|
|agents|[onPremisesAgent](onpremisesagent.md) collection| List of existing **onPremisesAgent** objects. Read-only. Nullable.|
|applicationSegments|[ipApplicationSegment](../resources/ipapplicationsegment.md) collection|Represents the segment configurations that are allowed for an on-premises non-web application published through Microsoft Entra application proxy.|
|connectorGroups|[connectorGroup](connectorgroup.md) collection| List of existing **connectorGroup** objects for applications published through Application Proxy. Read-only. Nullable.|
|connectors|[connector](connector.md) collection| List of existing **connector** objects for applications published through Application Proxy. Read-only. Nullable.|
|publishedResources|[publishedResource](publishedresource.md) collection| List of existing **publishedResource** objects. Read-only. Nullable.|
|sensors|[privateAccessSensor](../resources/privateaccesssensor.md) collection|A lightweight agent installed on domain controllers that helps secure access and enforce MFA to on-premise resources.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.onPremisesPublishingProfile",
  "keyProperty": "id"
}-->

```json
{
  "@odata.type": "#microsoft.graph.onPremisesPublishingProfile",
  "id": "String (identifier)",
  "isEnabled": "Boolean",
  "isDefaultAccessEnabled": "Boolean",
  "hybridAgentUpdaterConfiguration": {
    "@odata.type": "microsoft.graph.hybridAgentUpdaterConfiguration"
  }
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "onPremisesPublishingProfile resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
