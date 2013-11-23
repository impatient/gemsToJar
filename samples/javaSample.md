Sample of how this was called from java code.  There are more efficient ways to call and reuse the scripting container.  Tentatively plan to tidy up the other project and make available at some point.

```java

  import org.jruby.embed.PathType;
  import org.jruby.embed.ScriptingContainer;

  ....

	public File getCss(ServletContext context) throws UnableToCompileCssException {
		
		try {
		
		System.out.println("Start:" + new java.util.Date().getTime());
				
		container = new ScriptingContainer();
		container.setError(System.out);
		container.setOutput(System.out);
		container.setLoadPaths(loadPaths); //load compass gems
		
		workDirectory = Files.createTempDir();
		baseLocation = workDirectory.getAbsolutePath();
		
		
		Object [] args = buildArgs(context);
		
		container.callMethod(sassRun, "runSass", args );
		
		System.out.println("End:" +  new java.util.Date().getTime());
		
		return new File((String)args[1] +"/common.css");
		}
		catch(Exception e) {
			
			throw new UnableToCompileCssException(e);
		}
		
	}
```
