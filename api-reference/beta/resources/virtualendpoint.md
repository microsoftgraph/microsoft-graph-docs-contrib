---
title: "virtualEndpoint resource type"
description: "The virtualEndpoint resource represents a container for Cloud PC management functionality."
author: "jiajyang"
localization_priority: Normal
ms.prod: ""
doc_type: resourcePageType
---

# virtualEndpoint resource type

Namespace: microsoft.graph

The virtualEndpoint resource represents a container for Cloud PC management functionality.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get effective permission](../api/virtualendpoint-geteffectivepermissions.md)|String collection|View the effective permissions of the currently authenticated user.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the virtual endpoint id. Read-only.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|cloudPCs|[cloudPC](../resources/cloudpc.md) collection|Cloud managed virtual desktops.|
|deviceImages|[cloudPcDeviceImage](../resources/cloudpcdeviceimage.md) collection|The image resource on Cloud PC.|
|onPremisesConnections|[cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) collection|A defined collection of Azure resource information that can be used to establish on-premises network connectivity for Cloud PCs.|
|provisioningPolicies|[cloudPcProvisioningPolicy](../resources/cloudpcprovisioningpolicy.md) collection|Cloud PC provisioning policy.|
|selfServiceSettings|[cloudPcSelfServiceSettings](../resources/cloudpcselfservicesettings.md)|Self-service upgrade setting. Each tenant has one self-service upgrade setting, where the ID property is your Azure AD tenant ID. This setting allows an admin to enable a user to self-upgrade their Cloud PC.|
