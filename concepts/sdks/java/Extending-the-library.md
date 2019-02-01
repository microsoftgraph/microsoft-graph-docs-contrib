One of the goals of this library is to make it easy for both internal and external contributors to make changes to the library to make it easier to use.

## How the library is generated
When sufficient additions reach the v1 endpoint of Graph ([graph.microsoft.com/v1.0/$metadata](https://graph.microsoft.com/v1.0/$metadata)), we run a series of pre-generation tools that clean up the metadata and ready it for the generator tool. We run the [SDK Generator](https://github.com/microsoftgraph/msgraph-sdk-code-generator), setting `TargetLanguage` to `Java` in the [configuration file](https://github.com/microsoftgraph/MSGraph-SDK-Code-Generator/blob/dev/src/GraphODataTemplateWriter/.config/TemplateWriterSettings.json). This creates a large pool of generated Java files in the generator's output directory.

We generate two types of files:
- Models: These describe the POJOs that are accessible through Graph. You can use these in new requests to the service or retrieve these back in the deserialized Graph responses.
- Request Builders: These build up the requests to the Graph service. 

For each file, we generate two copies: one base copy and one extension copy. The extension copy is the file which you can make PRs against and provide your custom code. When we generate new files for the SDK, we use the following copy rules:

- Overwrite base classes.
- Take local changes to extension classes.

This ensures that custom code added to extension classes is not overwritten. It also enables easy discoverability for developers because they program against the same classes regardless of whether custom functionality is introduced.

![Generation process diagram](https://github.com/microsoftgraph/msgraph-sdk-java/blob/master/docs/Generator.png)

## Adding your custom functionality
You can make a PR to any of the files within the extensions folder of the models and requests folders. Consider the scope of the change you would like to make. For example, if you are looking to enable access to a feature that is applicable to all of Graph, consider extending the `GraphServiceClient`. Conversely, if your change only affects a specific part of a workload, restrict your changes to the specific model or request builder that handles this functionality. In your PR, we can work with you to help you achieve the correct scope if you are unsure.

Occasionally, it is necessary to make changes to generated files to enable your scenarios. In this instance, the best course of action is to open an issue so that we can update the relevant code in the [Generator repository](https://github.com/microsoftgraph/MSGraph-SDK-Code-Generator/). However, enterprising developers are not discouraged from contributing there as well. 

To get started on using the generator, review the repo's [readme](https://github.com/microsoftgraph/MSGraph-SDK-Code-Generator/blob/dev/README.md). 