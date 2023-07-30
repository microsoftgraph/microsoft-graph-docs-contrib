---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

mgc identity conditional-access named-locations patch --named-location-id {namedLocation-id} --body '{\
    "@odata.type": "#microsoft.graph.countryNamedLocation",\
    "displayName": "Updated named location without unknown countries and regions",\
    "countriesAndRegions": [\
        "CA",\
        "IN"\
    ],\
    "includeUnknownCountriesAndRegions": false\
}\
'

```