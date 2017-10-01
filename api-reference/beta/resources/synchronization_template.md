# Synchronization template

Synchronization template provides pre-configured synchronization settings for a particular application. These settings will be used by default for any [synchronization job](synchronization_job.md) based on the template.  Template is controlled by the developer of the application, although anyone can retrieve the template to see the default settings, most importantly [synchronization schema](synchronization_schema.md).

Application developer may provide multiple templates for a given application, and designate a default one. If multiple templates are available for the application you are interested in, seek application-specific guidance on which one better suits your case.

## JSON representation

```json
{
    "id": "String",
    "applicationId" : "String (identifier)",
    "default": "Boolean",
    "description": "String",
    "discoverable": "Boolean",
    "factoryTag": "SfOutDelta",
    "metadata": [{"@odata.type": "microsoft.graph.metadataEntry"}],
    "schema": {"@odata.type": "microsoft.graph.synchronizationSchema"}
}
```

## Properties

| Property      | Type                      | Description                  |
|:--------------|:--------------------------|:-----------------------------|
|id             |String                     |Unique template identifier|
|default        |Boolean                    |`true` if this template is recommended as default one for the application|
|description    |String                     |Description of the template|
|discoverable   |String                     |`true` if this template should appear in the collection of templates available for the application instance (service principal)|
|factoryTag     |String                     |One of the well-known factory tags supported by the synchronization engine. Factory tag tells synchronization engine which implementation should be used when processing jobs based on this template|
|metadata       |metadataEntry collection   |Additional extension properties. Unless mentioned explicitly, metadata values should not be changed|
|schema         |[synchronizationSchema](synchronization_schema.md)     |Default synchronization schema for the jobs based on this template|


## Methods

| Method        | Return Type               | Description                  |
|:--------------|:--------------------------|:-----------------------------|
|[List](../api/synchronization_templates_get.md)   |[synchronizationTemplate](synchronization_template.md) collection  |List templates available for a given application or application instance (service principal)|
|[Get](../api/synchronization_template_get.md)             |[synchronizationTemplate](synchronization_template.md)   |Retrieve existing template and its properties|
|[Create](../api/synchronization_templates_post.md)         |[synchronizationTemplate](synchronization_template.md)   |Create new template for a given application|
|[Update](../api/synchronization_template_put.md)          |[synchronizationTemplate](synchronization_template.md)   |Update template|


## JSON Example

```json
{
    "id": "CustomSCIM-myTestTemplate",
    "default": true,
    "description": null,
    "discoverable": true,
    "factoryTag": "CustomSCIM",
    "metadata": [
        {
            "key": "galleryApplicationIdentifier",
            "value": "cd3ed3de-93ee-400b-8b19-b61ef44a0f29"
        },
        {
            "key": "galleryApplicationKey",
            "value": "myscim.com"
        },
        {
            "key": "isOAuthEnabled",
            "value": "false"
        },
        {
            "key": "configurationFields",
            "value": "[{\"name\":\"username\"},{\"name\":\"password\",\"secret\":true},{\"name\":\"secrettoken\",\"secret\":true}]"
        }
    ],
    "schema": {...}
}