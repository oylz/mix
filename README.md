# autologin
something always use.
Aaaa

&uArr; 

Bbbb
```
st=>start: 启动|past:>http://www.baidu.com[blank]    // 开始
e=>end: 结束                        // 结束
op1=>operation: 方案一                // 运算1
sub2=>subroutine: 方案二|approved:>http://www.baidu.com[_parent]  // 运算2
sub3=>subroutine: 重新制定方案        // 运算2
cond1=>condition: 行不行？|request  // 判断条件1
cond2=>condition: 行不行？            // 判断条件2
io=>inputoutput: 结果满意            // 输出

// 开始->方案1->判断条件->
st->op1->cond1
// 判断条件1为no->方案2->判断条件2为no->重新制定方案->方案1
cond1(no,right)->sub2->cond2(no,right)->sub3(right)->op1
cond1(yes)->io->e          // 判断条件满足->输出->结束
cond2(yes)->io->e         // 判断条件满足->输出->结束
```
