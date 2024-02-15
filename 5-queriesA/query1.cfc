/**
 * Acts as the main controller for our practice query1.cfm page
 *
 * @author Dan Card 2/13/2022
 * @date 2/13/2022
 **/
 component {

	/**
	 * Returns all the books in our database
	 *
	 **/
	function allBooks(){
		try {
			var qs = new query( datasource = "DanCard" );
			qs.setSql( "select * from books order by title" );
			return qs.execute().getResult();
		} catch ( any err ) {
			writeDump( err );
		}
	}

}