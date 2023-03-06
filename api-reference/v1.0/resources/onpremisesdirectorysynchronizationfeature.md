---
title: "onPremisesDirectorySynchronizationFeature resource type"
description: "Consists of directory synchronization features that can be enabled or disabled."
author: "dkershaw10"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: resourcePageType
---

# onPremisesDirectorySynchronizationFeature resource type

Namespace: microsoft.graph

Consists of directory synchronization features that can be enabled or disabled. The naming pattern used is `<featureName>Enabled`. `true` indicates that the feature is enabled and `false` indicates that the feature disabled.

## Properties

| Property                                         | Type    | Description                                                                                                                                                                                                                                                                                            |
| :----------------------------------------------- | :------ | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| blockCloudObjectTakeoverThroughHardMatchEnabled  | Boolean | Used to block cloud object takeover via source anchor hard match if enabled.                                                                                                                                                                                                                           |
| blockSoftMatchEnabled                            | Boolean | Use to block soft match for all objects if enabled for the  tenant. Customers are encouraged to enable this feature and keep it enabled until soft matching is required again for their tenancy. This flag should be enabled again after any soft matching has been completed and is no longer needed. |
| bypassDirSyncOverridesEnabled                    | Boolean | When `true`, persists the values of _Mobile_ and _OtherMobile_ in on-premises AD during sync cycles instead of values of _MobilePhone_ or _AlternateMobilePhones_ in Azure AD.                                                                                                                         |
| cloudPasswordPolicyForPasswordSyncedUsersEnabled | Boolean | Used to indicate that cloud password policy applies to users whose passwords are synchronized from on-premises.                                                                                                                                                                                        |
| concurrentCredentialUpdateEnabled                | Boolean | Used to enable concurrent user credentials update in OrgId.                                                                                                                                                                                                                                            |
| concurrentOrgIdProvisioningEnabled               | Boolean | Used to enable concurrent user creation in OrgId.                                                                                                                                                                                                                                                      |
| deviceWritebackEnabled                           | Boolean | Used to indicate that device write-back is enabled.                                                                                                                                                                                                                                                    |
| directoryExtensionsEnabled                       | Boolean | Used to indicate that [directory extensions](/graph/api/resources/extensionProperty) are being synced from on-premises AD to Azure AD.                                                                                                                                                                 |
| fopeConflictResolutionEnabled                    | Boolean | Used to indicate that for a Microsoft Forefront Online Protection for Exchange (FOPE) migrated tenant, the conflicting proxy address should be migrated over.                                                                                                                                          |
| groupWriteBackEnabled                            | Boolean | Used to enable object-level group writeback feature for additional group types.                                                                                                                                                                                                                        |
| passwordSyncEnabled                              | Boolean | Used to indicate on-premise password synchronization is enabled.                                                                                                                                                                                                                                       |
| passwordWritebackEnabled                         | Boolean | Used to indicate that writeback of password resets from Azure AD to on-premises AD is enabled.                                                                                                                                                                                                         |
| quarantineUponProxyAddressesConflictEnabled      | Boolean | Used to indicate that we should quarantine objects with conflicting proxy address.                                                                                                                                                                                                                     |
| quarantineUponUpnConflictEnabled                 | Boolean | Used to indicate that we should quarantine objects conflicting with duplicate userPrincipalName.                                                                                                                                                                                                       |
| softMatchOnUpnEnabled                            | Boolean | Used to indicate that we should soft match objects based on userPrincipalName.                                                                                                                                                                                                                         |
| synchronizeUpnForManagedUsersEnabled             | Boolean | Used to indicate that we should synchronize userPrincipalName objects for managed users with licenses.                                                                                                                                                                                                 |
| unifiedGroupWritebackEnabled                     | Boolean | Used to indicate that Microsoft 365 Group write-back is enabled.                                                                                                                                                                                                                                       |
| userForcePasswordChangeOnLogonEnabled            | Boolean | Used to indicate that feature to force password change for a user on logon is enabled while synchronizing on-premise credentials.                                                                                                                                                                      |
| userWritebackEnabled                             | Boolean | Used to indicate that user writeback is enabled.                                                                                                                                                                                                                                                       |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.onPremisesDirectorySynchronizationFeature"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onPremisesDirectorySynchronizationFeature",
  "passwordSyncEnabled": "Boolean",
  "passwordWritebackEnabled": "Boolean",
  "directoryExtensionsEnabled": "Boolean",
  "quarantineUponUpnConflictEnabled": "Boolean",
  "quarantineUponProxyAddressesConflictEnabled": "Boolean",
  "softMatchOnUpnEnabled": "Boolean",
  "cloudPasswordPolicyForPasswordSyncedUsersEnabled": "Boolean",
  "fopeConflictResolutionEnabled": "Boolean",
  "unifiedGroupWritebackEnabled": "Boolean",
  "userWritebackEnabled": "Boolean",
  "deviceWritebackEnabled": "Boolean",
  "synchronizeUpnForManagedUsersEnabled": "Boolean",
  "userForcePasswordChangeOnLogonEnabled": "Boolean",
  "concurrentOrgIdProvisioningEnabled": "Boolean",
  "concurrentCredentialUpdateEnabled": "Boolean",
  "groupWriteBackEnabled": "Boolean",
  "blockSoftMatchEnabled": "Boolean",
  "blockCloudObjectTakeoverThroughHardMatchEnabled": "Boolean",
  "bypassDirSyncOverridesEnabled": "Boolean"
}
```
