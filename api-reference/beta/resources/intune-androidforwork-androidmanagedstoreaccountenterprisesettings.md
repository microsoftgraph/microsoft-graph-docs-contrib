---
title: "androidManagedStoreAccountEnterpriseSettings resource type"
description: "Enterprise settings for an Android managed store account."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# androidManagedStoreAccountEnterpriseSettings resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Enterprise settings for an Android managed store account.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get androidManagedStoreAccountEnterpriseSettings](../api/intune-androidforwork-androidmanagedstoreaccountenterprisesettings-get.md)|[androidManagedStoreAccountEnterpriseSettings](../resources/intune-androidforwork-androidmanagedstoreaccountenterprisesettings.md)|Read properties and relationships of the [androidManagedStoreAccountEnterpriseSettings](../resources/intune-androidforwork-androidmanagedstoreaccountenterprisesettings.md) object.|
|[Update androidManagedStoreAccountEnterpriseSettings](../api/intune-androidforwork-androidmanagedstoreaccountenterprisesettings-update.md)|[androidManagedStoreAccountEnterpriseSettings](../resources/intune-androidforwork-androidmanagedstoreaccountenterprisesettings.md)|Update the properties of a [androidManagedStoreAccountEnterpriseSettings](../resources/intune-androidforwork-androidmanagedstoreaccountenterprisesettings.md) object.|
|[approveApps action](../api/intune-androidforwork-androidmanagedstoreaccountenterprisesettings-approveapps.md)|None||
|[requestSignupUrl action](../api/intune-androidforwork-androidmanagedstoreaccountenterprisesettings-requestsignupurl.md)|String||
|[completeSignup action](../api/intune-androidforwork-androidmanagedstoreaccountenterprisesettings-completesignup.md)|None||
|[syncApps action](../api/intune-androidforwork-androidmanagedstoreaccountenterprisesettings-syncapps.md)|None||
|[unbind action](../api/intune-androidforwork-androidmanagedstoreaccountenterprisesettings-unbind.md)|None||
|[createGooglePlayWebToken action](../api/intune-androidforwork-androidmanagedstoreaccountenterprisesettings-creategoogleplaywebtoken.md)|String|Generates a web token that is used in an embeddable component.|
|[setAndroidDeviceOwnerFullyManagedEnrollmentState action](../api/intune-androidforwork-androidmanagedstoreaccountenterprisesettings-setandroiddeviceownerfullymanagedenrollmentstate.md)|None|Sets the AndroidManagedStoreAccountEnterpriseSettings AndroidDeviceOwnerFullyManagedEnrollmentEnabled to the given value.|
|[addApps action](../api/intune-androidforwork-androidmanagedstoreaccountenterprisesettings-addapps.md)|None||
|[retrieveStoreLayout function](../api/intune-androidforwork-androidmanagedstoreaccountenterprisesettings-retrievestorelayout.md)|[androidManagedStoreLayoutType](../resources/intune-androidforwork-androidmanagedstorelayouttype.md)|Gets the Managed Google Play store layout type from Google EMM API.|
|[setStoreLayout action](../api/intune-androidforwork-androidmanagedstoreaccountenterprisesettings-setstorelayout.md)|None|Sets the Managed Google Play store layout type via Google EMM API.|
|[requestEnterpriseUpgradeUrl action](../api/intune-androidforwork-androidmanagedstoreaccountenterprisesettings-requestenterpriseupgradeurl.md)|String||

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The Android store account enterprise settings identifier|
|bindStatus|[androidManagedStoreAccountBindStatus](../resources/intune-androidforwork-androidmanagedstoreaccountbindstatus.md)|Bind status of the tenant with the Google EMM API. Possible values are: `notBound`, `bound`, `boundAndValidated`, `unbinding`.|
|managedGooglePlayEnterpriseType|[managedGooglePlayEnterpriseType](../resources/intune-androidforwork-managedgoogleplayenterprisetype.md)|The managed Google Play enterprise type associated with a tenant. Possible values are: unspecified, managedGoogleDomain, managedGooglePlayAccountsEnterprise. Default is: unspecified. Read-Only. Possible values are: `enterpriseTypeUnspecified`, `managedGoogleDomain`, `managedGooglePlayAccountsEnterprise`, `unknownFutureValue`.|
|lastAppSyncDateTime|DateTimeOffset|Last completion time for app sync|
|lastAppSyncStatus|[androidManagedStoreAccountAppSyncStatus](../resources/intune-androidforwork-androidmanagedstoreaccountappsyncstatus.md)|Last application sync result. Possible values are: `success`, `credentialsNotValid`, `androidForWorkApiError`, `managementServiceError`, `unknownError`, `none`.|
|ownerUserPrincipalName|String|Owner UPN that created the enterprise|
|ownerOrganizationName|String|Organization name used when onboarding Android Enterprise|
|lastModifiedDateTime|DateTimeOffset|Last modification time for Android enterprise settings|
|enrollmentTarget|[androidManagedStoreAccountEnrollmentTarget](../resources/intune-androidforwork-androidmanagedstoreaccountenrollmenttarget.md)|Indicates which users can enroll devices in Android Enterprise device management. Possible values are: `none`, `all`, `targeted`, `targetedAsEnrollmentRestrictions`.|
|targetGroupIds|String collection|Specifies which AAD groups can enroll devices in Android for Work device management if enrollmentTarget is set to 'Targeted'|
|deviceOwnerManagementEnabled|Boolean|Indicates if this account is flighting for Android Device Owner Management with CloudDPC.|
|companyCodes|[androidEnrollmentCompanyCode](../resources/intune-androidforwork-androidenrollmentcompanycode.md) collection|Company codes for AndroidManagedStoreAccountEnterpriseSettings|
|androidDeviceOwnerFullyManagedEnrollmentEnabled|Boolean|Company codes for AndroidManagedStoreAccountEnterpriseSettings|
|managedGooglePlayInitialScopeTagIds|String collection|Initial scope tags for MGP apps|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.androidManagedStoreAccountEnterpriseSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.androidManagedStoreAccountEnterpriseSettings",
  "id": "String (identifier)",
  "bindStatus": "String",
  "managedGooglePlayEnterpriseType": "String",
  "lastAppSyncDateTime": "String (timestamp)",
  "lastAppSyncStatus": "String",
  "ownerUserPrincipalName": "String",
  "ownerOrganizationName": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "enrollmentTarget": "String",
  "targetGroupIds": [
    "String"
  ],
  "deviceOwnerManagementEnabled": true,
  "companyCodes": [
    {
      "@odata.type": "microsoft.graph.androidEnrollmentCompanyCode",
      "enrollmentToken": "String",
      "qrCodeContent": "String",
      "qrCodeImage": {
        "@odata.type": "microsoft.graph.mimeContent",
        "type": "String",
        "value": "binary"
      }
    }
  ],
  "androidDeviceOwnerFullyManagedEnrollmentEnabled": true,
  "managedGooglePlayInitialScopeTagIds": [
    "String"
  ]
}
```