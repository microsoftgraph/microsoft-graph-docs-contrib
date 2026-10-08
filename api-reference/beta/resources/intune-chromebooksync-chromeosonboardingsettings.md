---
title: "chromeOSOnboardingSettings resource type"
description: "Entity that represents a Chromebook tenant settings"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# chromeOSOnboardingSettings resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Entity that represents a Chromebook tenant settings

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List chromeOSOnboardingSettingses](../api/intune-chromebooksync-chromeosonboardingsettings-list.md)|[chromeOSOnboardingSettings](../resources/intune-chromebooksync-chromeosonboardingsettings.md) collection|List properties and relationships of the [chromeOSOnboardingSettings](../resources/intune-chromebooksync-chromeosonboardingsettings.md) objects.|
|[Get chromeOSOnboardingSettings](../api/intune-chromebooksync-chromeosonboardingsettings-get.md)|[chromeOSOnboardingSettings](../resources/intune-chromebooksync-chromeosonboardingsettings.md)|Read properties and relationships of the [chromeOSOnboardingSettings](../resources/intune-chromebooksync-chromeosonboardingsettings.md) object.|
|[Create chromeOSOnboardingSettings](../api/intune-chromebooksync-chromeosonboardingsettings-create.md)|[chromeOSOnboardingSettings](../resources/intune-chromebooksync-chromeosonboardingsettings.md)|Create a new [chromeOSOnboardingSettings](../resources/intune-chromebooksync-chromeosonboardingsettings.md) object.|
|[Delete chromeOSOnboardingSettings](../api/intune-chromebooksync-chromeosonboardingsettings-delete.md)|None|Deletes a [chromeOSOnboardingSettings](../resources/intune-chromebooksync-chromeosonboardingsettings.md).|
|[Update chromeOSOnboardingSettings](../api/intune-chromebooksync-chromeosonboardingsettings-update.md)|[chromeOSOnboardingSettings](../resources/intune-chromebooksync-chromeosonboardingsettings.md)|Update the properties of a [chromeOSOnboardingSettings](../resources/intune-chromebooksync-chromeosonboardingsettings.md) object.|
|[connect action](../api/intune-chromebooksync-chromeosonboardingsettings-connect.md)|[chromeOSOnboardingStatus](../resources/intune-chromebooksync-chromeosonboardingstatus.md)||
|[disconnect action](../api/intune-chromebooksync-chromeosonboardingsettings-disconnect.md)|[chromeOSOnboardingStatus](../resources/intune-chromebooksync-chromeosonboardingstatus.md)||

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The ChromebookTenant's Id|
|ownerUserPrincipalName|String|The ChromebookTenant's OwnerUserPrincipalName|
|onboardingStatus|[onboardingStatus](../resources/intune-chromebooksync-onboardingstatus.md)|The ChromebookTenant's OnboardingStatus. Possible values are: `unknown`, `inprogress`, `onboarded`, `failed`, `offboarding`, `unknownFutureValue`.|
|lastModifiedDateTime|DateTimeOffset|The ChromebookTenant's LastModifiedDateTime|
|lastDirectorySyncDateTime|DateTimeOffset|The ChromebookTenant's LastDirectorySyncDateTime|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.chromeOSOnboardingSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.chromeOSOnboardingSettings",
  "id": "String (identifier)",
  "ownerUserPrincipalName": "String",
  "onboardingStatus": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "lastDirectorySyncDateTime": "String (timestamp)"
}
```