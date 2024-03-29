---
title: "deviceManagement resource type"
description: "Singleton entity that acts as a container for all device management functionality."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceManagement resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Singleton entity that acts as a container for all device management functionality.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get deviceManagement](../api/intune-partnerintegration-devicemanagement-get.md)|[deviceManagement](../resources/intune-partnerintegration-devicemanagement.md)|Read properties and relationships of the [deviceManagement](../resources/intune-partnerintegration-devicemanagement.md) object.|
|[Update deviceManagement](../api/intune-partnerintegration-devicemanagement-update.md)|[deviceManagement](../resources/intune-partnerintegration-devicemanagement.md)|Update the properties of a [deviceManagement](../resources/intune-partnerintegration-devicemanagement.md) object.|
|[getOrganizationalMessageTenantConsent function](../api/intune-partnerintegration-devicemanagement-getorganizationalmessagetenantconsent.md)|[organizationalMessageTenantConsent](../resources/intune-partnerintegration-organizationalmessagetenantconsent.md)||
|[postOrganizationalMessageTenantConsent action](../api/intune-partnerintegration-devicemanagement-postorganizationalmessagetenantconsent.md)|[organizationalMessageTenantConsent](../resources/intune-partnerintegration-organizationalmessagetenantconsent.md)||
|[updateOrganizationalMessageTenantConsent action](../api/intune-partnerintegration-devicemanagement-updateorganizationalmessagetenantconsent.md)|[organizationalMessageTenantConsent](../resources/intune-partnerintegration-organizationalmessagetenantconsent.md)||
|[getOrganizationalMessageFeatureOnboarding function](../api/intune-partnerintegration-devicemanagement-getorganizationalmessagefeatureonboarding.md)|[organizationalMessageFeatureOnboarding](../resources/intune-partnerintegration-organizationalmessagefeatureonboarding.md)||
|[postOrganizationalMessageFeatureOnboarding action](../api/intune-partnerintegration-devicemanagement-postorganizationalmessagefeatureonboarding.md)|[organizationalMessageFeatureOnboarding](../resources/intune-partnerintegration-organizationalmessagefeatureonboarding.md)||

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|
|organizationalMessageFeatureOnboarding|[organizationalMessageFeatureOnboarding](../resources/intune-partnerintegration-organizationalmessagefeatureonboarding.md)|OrganizationalMessageFeatureOnboarding|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|configManagerCollections|[configManagerCollection](../resources/intune-partnerintegration-configmanagercollection.md) collection|A list of ConfigManagerCollection|
|organizationalMessageDetails|[organizationalMessageDetail](../resources/intune-partnerintegration-organizationalmessagedetail.md) collection|A list of OrganizationalMessageDetails|
|organizationalMessageGuidedContents|[organizationalMessageGuidedContent](../resources/intune-partnerintegration-organizationalmessageguidedcontent.md) collection|A list of OrganizationalMessageGuidedContents|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagement"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagement",
  "id": "String (identifier)",
  "organizationalMessageFeatureOnboarding": {
    "@odata.type": "microsoft.graph.organizationalMessageFeatureOnboarding",
    "hasRequiredLicense": true
  }
}
```
