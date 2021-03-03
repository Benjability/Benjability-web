baselines
baseline: spec

	<baseline>
	spec for: #pharo do: [ 
		spec
			
			package: 'Benjability-Core';
			package: 'Benjability-Web'
			with: [ spec requires: 'Benjability-Core' ] ]