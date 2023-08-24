---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta planner tasks details patch --planner-task-id {plannerTask-id} --if-match W/"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=" --body '{\
  "previewType": "noPreview",\
  "references": {\
    "http%3A//developer%2Emicrosoft%2Ecom":{\
      "@odata.type": "microsoft.graph.plannerExternalReference",\
      "alias": "Documentation",\
      "previewPriority": " !",\
      "type": "Other"\
    },\
    "https%3A//developer%2Emicrosoft%2Ecom/graph/graph-explorer":{\
      "@odata.type": "microsoft.graph.plannerExternalReference",\
      "previewPriority": "  !!",\
    },\
    "http%3A//www%2Ebing%2Ecom": null\
  },\
  "checklist": {\
    "95e27074-6c4a-447a-aa24-9d718a0b86fa":{\
      "@odata.type": "microsoft.graph.plannerChecklistItem",\
      "title": "Update task details",\
      "isChecked": true\
    },\
    "d280ed1a-9f6b-4f9c-a962-fb4d00dc50ff":{\
      "@odata.type": "microsoft.graph.plannerChecklistItem",\
      "isChecked": true,\
    },\
    "a93c93c5-10a6-4167-9551-8bafa09967a7": null\
  },\
  "description": "Updated task details properties:\nUpdated checklist:Sub items\nUpdated references:Related links"\
}\
'

```