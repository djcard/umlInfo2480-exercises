/***
 * Acts as a main controler for our index.cfm page. 
 * 
 * @author Dan Card
 * @date 2/14/2024
 * 
 * */
component {

    /***
     * Return all the books in our database
     * 
     * */
        function allBooks(){
            try{
                var qs = new query(datasource="DanCard");
                qs.setSql("select * from books order by title");
                return qs.execute().getResult();
            } catch(any err){
                writeDump(err);
            }
        }
}