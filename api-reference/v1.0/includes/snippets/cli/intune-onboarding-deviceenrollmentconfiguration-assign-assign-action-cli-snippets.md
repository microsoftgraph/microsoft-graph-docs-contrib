---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc device-management device-enrollment-configurations assign post --device-enrollment-configuration-id {deviceEnrollmentConfiguration-id} --body '{\
  "enrollmentConfigurationAssignments": [\
    {\
      "@odata.type": "#microsoft.graph.enrollmentConfigurationAssignment",\
      "id": "705b021c-021c-705b-1c02-5b701c025b70",\
      "target": {\
        "@odata.type": "microsoft.graph.configurationManagerCollectionAssignmentTarget",\
        "collectionId": "Collection Id value"\
      }\
    }\
  ]\
}\
'

```