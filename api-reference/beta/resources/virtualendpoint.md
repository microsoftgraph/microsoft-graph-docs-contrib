---
title: "virtualEndpoint resource type"
description: "**TODO: Add Description**"
author: "jiajyang"
localization_priority: Normal
ms.prod: "microsoft_cloudpc"
doc_type: resourcePageType
---

# virtualEndpoint resource type

TODO
Namespace: microsoft.graph

Project Deschutes is a new fixed-price SaaS service being worked on by the CMX organization (Commercial Management Experiences led by Brad Anderson). As part of this service, Desktop admins (Intune/SCCM admins) will be able to provision virtual desktops for their licensed users and manage these virtual endpoints alongside their physical PC estate in Microsoft Endpoint Manager (Portal and APIs). We are releasing a new set of APIs to allow customers and partners to provision and manage these virtual desktops.

## Methods

TODO
|Method|Return type|Description|
|:---|:---|:---|
|[getEffectivePermissions](../api/virtualendpoint-geteffectivepermissions.md)|String collection|effective permissions of the currently authenticated user.|
|[List cloudPCs](../api/virtualendpoint-list-cloudpcs.md)|[cloudPC](../resources/cloudpc.md) collection|Get the cloudPC resources from the cloudPCs navigation property.|
|[Get cloudPCs](../api/virtualendpoint-get-cloudpc.md)|[cloudPC](../resources/cloudpc.md)|Read the properties and relationships of a [cloudPC](../resources/cloudpc.md) object.|
|[Reprovision CloudPC](../api/cloudpc-reprovision.md)|None|Reprovision a specific Cloud PC.|
|[List deviceImages](../api/virtualendpoint-list-deviceimages.md)|[cloudPcDeviceImage](../resources/cloudpcdeviceimage.md) collection|Get the cloudPcDeviceImage resources from the deviceImages navigation property.|
|[Get deviceImages](../api/virtualendpoint-get-cloudpcdeviceimage.md)|[cloudPcDeviceImage](../resources/cloudpcdeviceimage.md)|Read the properties and relationships of a [cloudPcDeviceImage](../resources/cloudpcdeviceimage.md) object.|
|[Create deviceImages](../api/virtualendpoint-post-deviceimages.md)|[cloudPcDeviceImage](../resources/cloudpcdeviceimage.md)|Create a new cloudPcDeviceImage object.|
|[Delete deviceImages](../api/virtualendpoint-delete-deviceimages.md)|None|Delete a [cloudPcDeviceImage](../resources/cloudpcdeviceimage.md) object.|
|[CloudPcDeviceImage-GetSourceImages](../api/cloudpcdeviceimage-getsourceimages.md)|[CloudPcSourceDeviceImage](../resources/cloudpcsourcedeviceimage.md)|Get a list of all managed image resources from your Azure subscriptions.|
|[List onPremisesConnections](../api/virtualendpoint-list-onpremisesconnections.md)|[cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) collection|Get the cloudPcOnPremisesConnection resources from the onPremisesConnections navigation property.|
|[Get onPremisesConnections](../api/virtualendpoint-get-cloudpconpremisesconnection.md)|[cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md)|Read the properties and relationships of a [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) object.|
|[Create onPremisesConnections](../api/virtualendpoint-post-onpremisesconnections.md)|[cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md)|Create a new cloudPcOnPremisesConnection object.|
|[Update onPremisesConnections](../api/virtualendpoint-update-onpremisesconnections.md)|[cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md)|Update the properties of an onPremisesConnections object.|
|[Delete onPremisesConnections](../api/virtualendpoint-delete-onpremisesconnections.md)|None|Delete a [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) object.|
|[CloudPcOnPremisesConnection-RunHealthChecks](../api/cloudpconpremisesconnection-runhealthcheck.md)|None|Re run health checks of on premises connection.|
|[List provisioningPolicies](../api/virtualendpoint-list-provisioningpolicies.md)|[cloudPcProvisioningPolicy](../resources/cloudpcprovisioningpolicy.md) collection|Get the cloudPcProvisioningPolicy resources from the provisioningPolicies navigation property.|
|[Get provisioningPolicies](../api/virtualendpoint-get-cloudpcprovisioningpolicy.md)|[cloudPcProvisioningPolicy](../resources/cloudpcprovisioningpolicy.md)|Read the properties and relationships of a [cloudPcProvisioningPolicy](../resources/cloudpcprovisioningpolicy.md) object.|
|[Create provisioningPolicies](../api/virtualendpoint-post-provisioningpolicies.md)|[cloudPcProvisioningPolicy](../resources/cloudpcprovisioningpolicy.md)|Create a new cloudPcProvisioningPolicy object.|
|[Update provisioningPolicies](../api/virtualendpoint-update-provisioningpolicies.md)|[cloudPcProvisioningPolicy](../resources/cloudpcprovisioningpolicy.md)|Update the properties of a provisioningPolicies object.|
|[Delete provisioningPolicies](../api/virtualendpoint-delete-provisioningpolicies.md)|None|Delete a [cloudPcProvisioningPolicy](../resources/cloudpcprovisioningpolicy.md) object.|
|[CloudPcProvisioningPolicies-Assign](../api/cloudpcprovisioningpolicy-post-assignments.md)|None|Assign the provisioning policy to a group|
|[Get selfServiceSettings](../api/virtualendpoint-get-cloudpcselfservicesettings.md)|[cloudPcSelfServiceSettings](../resources/cloudpcselfservicesettings.md)|Read the properties and relationships of a [cloudPcSelfServiceSettings](../resources/cloudpcselfservicesettings.md) object.|
|[Update selfServiceSettings](../api/virtualendpoint-update-selfservicesettings.md)|[cloudPcSelfServiceSettings](../resources/cloudpcselfservicesettings.md)|Update the properties of a selfServiceSettings object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the virtual endpoint id. Read-only.|

## Relationships

TODO
|Relationship|Type|Description|
|:---|:---|:---|
|cloudPCs|[cloudPC](../resources/cloudpc.md) collection|Cloud managed virtual desktops.|
|deviceImages|[cloudPcDeviceImage](../resources/cloudpcdeviceimage.md) collection|The image resource on Cloud PC.|
|onPremisesConnections|[cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) collection|A defined collection of Azure resource information that can be used to establish on-premises network connectivity for Cloud PCs.|
|provisioningPolicies|[cloudPcProvisioningPolicy](../resources/cloudpcprovisioningpolicy.md) collection|Cloud PC provisioning policy.|
|selfServiceSettings|[cloudPcSelfServiceSettings](../resources/cloudpcselfservicesettings.md)|Self-service upgrade setting. Each tenant has one self-service upgrade setting, where the ID property is your Azure AD tenant ID. This setting allows an admin to enable a user to self-upgrade their Cloud PC.|
