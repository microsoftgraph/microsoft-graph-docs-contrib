---
title: "synchronizationJobSubject resource type"
description: "Represents the objects that will be provisioned during on-demand provisioning."
author: "ArvindHarinder1"
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# synchronizationJobSubject resource type

Namespace: microsoft.graph

Represents the objects that will be provisioned during on-demand provisioning.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|links|[synchronizationLinkedObjects](../resources/synchronization-synchronizationlinkedobjects.md)|Principals that you would like to provision.|
|objectId|String|The identifier of an object to which a **synchronizationJob** is to be applied. Can be one of the following: <ul><li>An **onPremisesDistinguishedName** for synchronization from Active Directory to Azure AD.</li><li>The user ID for synchronization from Microsoft Entra ID to a third-party.</li><li>The Worker ID of the Workday worker for synchronization from Workday to either Active Directory or Azure AD.</li></ul>|
|objectTypeName|String|The type of the object to which a **synchronizationJob** is to be applied. Can be one of the following: <ul><li>`user` for synchronizing between Active Directory and Azure AD.</li><li>`User` for synchronizing a user between Microsoft Entra ID and a third-party application. </li><li>`Worker` for synchronization a user between Workday and either Active Directory or Azure AD.</li><li>`Group` for synchronizing a group between Microsoft Entra ID and a third-party application. </li></ul>|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.synchronizationJobSubject"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.synchronizationJobSubject",
  "objectId": "String",
  "objectTypeName": "String",
  "links": {
    "@odata.type": "microsoft.graph.synchronizationLinkedObjects"
  }
}
```
