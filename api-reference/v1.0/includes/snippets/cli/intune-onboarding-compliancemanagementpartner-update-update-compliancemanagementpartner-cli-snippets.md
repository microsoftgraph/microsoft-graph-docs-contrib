---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

mgc device-management compliance-management-partners patch --compliance-management-partner-id {complianceManagementPartner-id} --body '{\
  "@odata.type": "#microsoft.graph.complianceManagementPartner",\
  "lastHeartbeatDateTime": "2016-12-31T23:59:37.9174975-08:00",\
  "partnerState": "unavailable",\
  "displayName": "Display Name value",\
  "macOsOnboarded": true,\
  "androidOnboarded": true,\
  "iosOnboarded": true,\
  "macOsEnrollmentAssignments": [\
    {\
      "@odata.type": "microsoft.graph.complianceManagementPartnerAssignment",\
      "target": {\
        "@odata.type": "microsoft.graph.configurationManagerCollectionAssignmentTarget",\
        "collectionId": "Collection Id value"\
      }\
    }\
  ],\
  "androidEnrollmentAssignments": [\
    {\
      "@odata.type": "microsoft.graph.complianceManagementPartnerAssignment",\
      "target": {\
        "@odata.type": "microsoft.graph.configurationManagerCollectionAssignmentTarget",\
        "collectionId": "Collection Id value"\
      }\
    }\
  ],\
  "iosEnrollmentAssignments": [\
    {\
      "@odata.type": "microsoft.graph.complianceManagementPartnerAssignment",\
      "target": {\
        "@odata.type": "microsoft.graph.configurationManagerCollectionAssignmentTarget",\
        "collectionId": "Collection Id value"\
      }\
    }\
  ]\
}\
'

```