/**
 * Created: Aaron.
 * address: http://www.cnblogs.com/aaron-pan/
 */

//var pageIndex=window.history.state===null?0:window.history.state.page;

(function($,window,undefined){
    var loadData={
        pageIndex:window.history.state===null?1:window.history.state.page,
        //pageIndex:0,
        init:function(){
            this.getData(this.pageIndex);
            this.nextPage();
        },
        getData:function(pageIndex){
            var that=this;
            $.ajax({
                type:'post',
                url:'./data/getMovices'+pageIndex+'.json',
                dataType:'json',
                async:false,
                success:function(data){
                    that.renderDom(data);
                }
            })
        },
        renderDom:function(movies){
            var bookHtml=
                "<table>"+
                "<tr>"+
                "<th>电影</th>>"+
                "<th>导演</th>"+
                "<th>上映时间</th>"+
                "</tr>";
            for(var i=0;i<movies.length;i++){
                bookHtml +=
                    "<tr>" +
                    "   <td>" + movies[i].moviesName + "</td>" +
                    "   <td><a>" + movies[i].moviesEditor + "</a></td>" +
                    "   <td>" + movies[i].times + "</td>" +
                    "</tr>";
            }
            bookHtml+="</table>";
            bookHtml +=
                "<button>上一页</button>" +
                "<button class='nextPage'>下一页</button>";
            $('body').html(bookHtml);
        },
        nextPage:function(){
            var that=this;
            $(document).on("click",".nextPage",function(){
                that.pageIndex++;
                that.getData(that.pageIndex);
                window.history.pushState({page:that.pageIndex},null,window.location.href);
                //后退and刷新回到首页 window.history.replaceState({page:that.pageIndex},null,window.location.href);
            })
        },
    };
    loadData.init();
    window.addEventListener("popstate",function(event){
        var page=0;
        if(event.state!==null){
            page=event.state.page;
            console.log('page:'+page);
        }
        console.log('page:'+page);
        loadData.getData(page);
        loadData.pageIndex=page;
    })

})(jQuery,window,undefined);