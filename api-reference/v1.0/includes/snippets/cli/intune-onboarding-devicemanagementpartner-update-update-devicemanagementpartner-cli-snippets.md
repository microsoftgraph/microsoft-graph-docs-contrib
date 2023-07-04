---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

mgc device-management device-management-partners patch --device-management-partner-id {deviceManagementPartner-id} --body '{\
  "@odata.type": "#microsoft.graph.deviceManagementPartner",\
  "lastHeartbeatDateTime": "2016-12-31T23:59:37.9174975-08:00",\
  "partnerState": "unavailable",\
  "partnerAppType": "singleTenantApp",\
  "singleTenantAppId": "Single Tenant App Id value",\
  "displayName": "Display Name value",\
  "isConfigured": true,\
  "whenPartnerDevicesWillBeRemovedDateTime": "2016-12-31T23:56:38.2655023-08:00",\
  "whenPartnerDevicesWillBeMarkedAsNonCompliantDateTime": "2016-12-31T23:58:42.2131231-08:00",\
  "groupsRequiringPartnerEnrollment": [\
    {\
      "@odata.type": "microsoft.graph.deviceManagementPartnerAssignment",\
      "target": {\
        "@odata.type": "microsoft.graph.configurationManagerCollectionAssignmentTarget",\
        "collectionId": "Collection Id value"\
      }\
    }\
  ]\
}\
'

```