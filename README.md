### Utils/BaseServlet用法

所有的Servlet继承这个BaseServlet，继承之后，不用像以前一样实现doget dopost等方法，只需要在里面实现你自己想要的方法即可，
在超链接里面想要调用servlet里面的方法时，像之前丽萍哥教的那样，超链接需要额外加一个method参数，参数的值就是你想要调用的方法名。
此外，servlet中自己定义的函数返回值都为String类型，返回值就是该方法调用完之后想要跳转的页面。
```java
@WebServlet("/EvalatorServlet")
public class EvalatorServlet extends BaseServlet{

    public String login(HttpServletRequest request, HttpServletResponse response){
        System.out.println("hello world login");
        return "/index.jsp";
    }

    public String exit(HttpServletRequest request, HttpServletResponse response){
        System.out.println("hello world login");
        return "/html/courseDetail-4.html";
    }
}
```
```html
<a href="<c:url value='/EvalatorServlet?method=login' />">test</a>
```




### Utils/BeanUtil和JDBCutil用法
先修改下JDBCutil里面的数据库信息
```java
//数据库用户名
private static final String USERNAME = "root";
//数据库密码
private static final String PASSWORD = "";
//驱动信息
private static final String DRIVER = "com.mysql.jdbc.Driver";
//数据库地址
private static final String URL = "jdbc:mysql://localhost:3306/uml_open_course_db";
```

使用前先在Dao中new一个BeauUtil
```java
JDBCutil jdbcutil=new JDBCutil();
```

先写出要执行的sql语句
```java
String sql="insert into article values(?,?,?,?,?,?,?,?,?)";
```
?位置的参数通过一个List传入
```java
List<Object> params=new ArrayList<>();
        params.add(article.getAid());
        params.add(article.getUid());
        params.add(article.getCid());
        params.add(article.getState());
        params.add(article.getTitle());
        params.add(article.getContent());
        params.add(article.getGreat_num());
        params.add(article.getPublish_time());
        params.add(article.getUpdate_time());
```
如果是插入，更新，删除等语句应该使用jdbcUtil的updateByPreparedStatement 方法，传入sql语句和上面的参数集合
```java
jdbcutil.updateByPreparedStatement(sql,params);
```
如果传入的是查询语句的话会复杂一点点
如果只是查询单条语句
```java
select * from article where aid=?
```
返回值是一个Map类型
```java
Map<String, Object> map=jdbcutil.findSimpleResult(sql,params);
```
只需要调用BeanUtil的convertMap方法，传入要返回的类的类型和map即可
```java
Article article = (Article) BeanUtil.convertMap(Article.class, map);
```
不过在使用这个类的时候可能会遇到反射失败的情况，如果出现了这种情况，只能够自己手动从map把字段一个一个取出来，然后
手动设置在对象中。


如果查询的返回多个结果
返回的是一个List<Map>
只需要写一个循环执行上面查询单个结果的代码即可

###下面给出几个例子
```java
public int gettotalArticl(){
        String sql="select * from article";
        try {
            List<Object> params=new ArrayList<>();
            List<Map<String, Object>> list= (List<Map<String, Object>>) jdbcutil.findModeResult(sql,params);
            return list.size();
        }catch (Exception e){
            throw new RuntimeException(e.getMessage());
        }
    }
    public Article findArticleByAid(String aid){
        String sql="select * from article where aid=?";
        List<Object> params=new ArrayList<>();
        params.add(aid);
        try {
            Map<String, Object> map=jdbcutil.findSimpleResult(sql,params);
            if (map.size() != 0) {
                Article article = (Article) BeanUtil.convertMap(Article.class, map);
                return article;
            }
            else
                return null;
        }catch (Exception e){
            throw new RuntimeException(e.getMessage());
        }
    }
    public void publish_Article(Article article){
        String sql="insert into article values(?,?,?,?,?,?,?,?,?)";
        List<Object> params=new ArrayList<>();
        params.add(article.getAid());
        params.add(article.getUid());
        params.add(article.getCid());
        params.add(article.getState());
        params.add(article.getTitle());
        params.add(article.getContent());
        params.add(article.getGreat_num());
        params.add(article.getPublish_time());
        params.add(article.getUpdate_time());
        try {
            jdbcutil.updateByPreparedStatement(sql,params);
        }catch (Exception e){
            throw new RuntimeException(e.getMessage());
        }
    }
```
