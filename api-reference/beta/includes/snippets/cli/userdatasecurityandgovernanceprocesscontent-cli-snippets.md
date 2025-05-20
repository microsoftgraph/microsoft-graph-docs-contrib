---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta users data-security-and-governance process-content post --user-id {user-id} --body '{\
  "contentToProcess": {\
        "contentEntries": [\
            {\
                "@odata.Type": "microsoft.graph.processFileMetadata",\
                "identifier": "91e1ca70-6e5b-4120-abf0-472034ba05c3",\
                "content":{\
                    "@odata.Type": "microsoft.graph.binaryContent",\
                    "data": "<some-binary-data>"\
                },\
                "name": "Example.docx",\
                "createdDateTime": "2024-07-23T01:31:40.2020463Z",\
                "updatedDateTime": "2024-09-17T13:45:21.0000000Z",\
                "correlationId": "54689",\
                "sequenceNumber": 1,\
                "length": 17352,\
                "isTruncated": false,\
                "ownerId": "ffe1ca70-6e5b-4120-abf0-472034ba05d4",\
                "customProperties": {\
                    "Department": "Finance",\
                    "ReviewerName": "John Smith"\
                }\
            }\
        ],\
        "activityMetadata": {\
            "activity": "uploadFile",\
            "applicationLocation": "bing.com"\
        },\
        "deviceMetadata": {\
            "deviceType": "unmanaged",\
            "operatingSystemSpecifications": {\
                "operatingSystemPlatform": "windows",\
                "operatingSystemVersion": "10.0.2.4"\
            }\
        },\
        "integratedAppMetadata": {\
            "name": "ContosoIsvApplication",\
            "version": "1.2",\
        }\
    }\
}\
'

```