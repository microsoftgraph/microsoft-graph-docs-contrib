---
title: "entityMappingConfiguration resource type"
description: "Holds the per-entity-type mappings that translate detection query columns into alert entities."
author: "mmekler"
ms.date: 05/25/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# entityMappingConfiguration resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Holds the per-entity-type mappings that translate detection query columns into the entities that are attached to the resulting alert. This resource is configured in the **entityMappings** property of an [alertTemplate](../resources/security-alerttemplate.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|accounts|[microsoft.graph.security.accountEntityMapping](../resources/security-accountentitymapping.md) collection|Mappings from detection query columns to account entities attached to the alert.|
|amazonResources|[microsoft.graph.security.amazonResourceEntityMapping](../resources/security-amazonresourceentitymapping.md) collection|Mappings from detection query columns to Amazon Web Services resource entities attached to the alert.|
|azureResources|[microsoft.graph.security.azureResourceEntityMapping](../resources/security-azureresourceentitymapping.md) collection|Mappings from detection query columns to Azure resource entities attached to the alert.|
|cloudApplications|[microsoft.graph.security.cloudApplicationEntityMapping](../resources/security-cloudapplicationentitymapping.md) collection|Mappings from detection query columns to cloud application entities attached to the alert.|
|dns|[microsoft.graph.security.dnsEntityMapping](../resources/security-dnsentitymapping.md) collection|Mappings from detection query columns to DNS entities attached to the alert.|
|files|[microsoft.graph.security.fileEntityMapping](../resources/security-fileentitymapping.md) collection|Mappings from detection query columns to file entities attached to the alert.|
|googleCloudResources|[microsoft.graph.security.googleCloudResourceEntityMapping](../resources/security-googlecloudresourceentitymapping.md) collection|Mappings from detection query columns to Google Cloud resource entities attached to the alert.|
|hosts|[microsoft.graph.security.hostEntityMapping](../resources/security-hostentitymapping.md) collection|Mappings from detection query columns to host entities attached to the alert.|
|ips|[microsoft.graph.security.ipEntityMapping](../resources/security-ipentitymapping.md) collection|Mappings from detection query columns to IP address entities attached to the alert.|
|mailboxes|[microsoft.graph.security.mailboxEntityMapping](../resources/security-mailboxentitymapping.md) collection|Mappings from detection query columns to mailbox entities attached to the alert.|
|mailClusters|[microsoft.graph.security.mailClusterEntityMapping](../resources/security-mailclusterentitymapping.md) collection|Mappings from detection query columns to mail cluster entities attached to the alert.|
|mailMessages|[microsoft.graph.security.mailMessageEntityMapping](../resources/security-mailmessageentitymapping.md) collection|Mappings from detection query columns to mail message entities attached to the alert.|
|oAuthApplications|[microsoft.graph.security.oAuthApplicationEntityMapping](../resources/security-oauthapplicationentitymapping.md) collection|Mappings from detection query columns to OAuth application entities attached to the alert.|
|processes|[microsoft.graph.security.processEntityMapping](../resources/security-processentitymapping.md) collection|Mappings from detection query columns to process entities attached to the alert.|
|registryValues|[microsoft.graph.security.registryValueEntityMapping](../resources/security-registryvalueentitymapping.md) collection|Mappings from detection query columns to registry value entities attached to the alert.|
|securityGroups|[microsoft.graph.security.securityGroupEntityMapping](../resources/security-securitygroupentitymapping.md) collection|Mappings from detection query columns to security group entities attached to the alert.|
|urls|[microsoft.graph.security.urlEntityMapping](../resources/security-urlentitymapping.md) collection|Mappings from detection query columns to URL entities attached to the alert.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.entityMappingConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.entityMappingConfiguration",
  "accounts": [
    { "@odata.type": "microsoft.graph.security.accountEntityMapping" }
  ],
  "amazonResources": [
    { "@odata.type": "microsoft.graph.security.amazonResourceEntityMapping" }
  ],
  "azureResources": [
    { "@odata.type": "microsoft.graph.security.azureResourceEntityMapping" }
  ],
  "cloudApplications": [
    { "@odata.type": "microsoft.graph.security.cloudApplicationEntityMapping" }
  ],
  "dns": [
    { "@odata.type": "microsoft.graph.security.dnsEntityMapping" }
  ],
  "files": [
    { "@odata.type": "microsoft.graph.security.fileEntityMapping" }
  ],
  "googleCloudResources": [
    { "@odata.type": "microsoft.graph.security.googleCloudResourceEntityMapping" }
  ],
  "hosts": [
    { "@odata.type": "microsoft.graph.security.hostEntityMapping" }
  ],
  "ips": [
    { "@odata.type": "microsoft.graph.security.ipEntityMapping" }
  ],
  "mailboxes": [
    { "@odata.type": "microsoft.graph.security.mailboxEntityMapping" }
  ],
  "mailClusters": [
    { "@odata.type": "microsoft.graph.security.mailClusterEntityMapping" }
  ],
  "mailMessages": [
    { "@odata.type": "microsoft.graph.security.mailMessageEntityMapping" }
  ],
  "oAuthApplications": [
    { "@odata.type": "microsoft.graph.security.oAuthApplicationEntityMapping" }
  ],
  "processes": [
    { "@odata.type": "microsoft.graph.security.processEntityMapping" }
  ],
  "registryValues": [
    { "@odata.type": "microsoft.graph.security.registryValueEntityMapping" }
  ],
  "securityGroups": [
    { "@odata.type": "microsoft.graph.security.securityGroupEntityMapping" }
  ],
  "urls": [
    { "@odata.type": "microsoft.graph.security.urlEntityMapping" }
  ]
}
```