# Library-Manage-System-Django
a library management system for tongji university built with django and mysql

学习Django

```python
# 生成数据库并迁移
python manage.py makemigrations
python manage.py migrate
```

在本地运行测试
```python
python manage.py runserver
```

将项目简单部署到ECS：在ECS上配置python，mysql环境，使用xftp将项目上传到服务器，路径为`/var/www/LibraryManage`。  

调整settings.py文件，使其符合服务器环境（mysql用户名密码等）

```python 
pip install -r requirements.txt
```
安装依赖

导出本地的mysql数据库，并导入服务器的数据库中

linux服务器上mysql是区分大小写的，需要调整配置文件，否则会找不到对应的表
