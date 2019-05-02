
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var clientContext = "d45324c1-fcb5-430a-902c-f20af696537c";

var sourceLevels = new AudioSourceLevel
{
	Participant = "632899f8-2ea1-4604-8413-27bd2892079f",
	Level = 50,
	DuckOthers = false,
};

var sourceLevelsList = new List<AudioSourceLevel>();
sourceLevelsList.Add( sourceLevels );

var ducking = new AudioDuckingConfiguration
{
	RampActive = 50,
	RampInactive = 50,
	LowerLevel = 10,
	UpperLevel = 50,
};

var participantMixerLevels = new ParticipantMixerLevel
{
	Participant = "550fae72-d251-43ec-868c-373732c2704f",
	Exclusive = true,
	Ducking = ducking,
	SourceLevels = sourceLevelsList,
};

var participantMixerLevelsList = new List<ParticipantMixerLevel>();
participantMixerLevelsList.Add( participantMixerLevels );

await graphClient.App.Calls["{id}"].Participants
	.ConfigureMixer(participantMixerLevelsList,clientContext)
	.Request()
	.PostAsync()

```