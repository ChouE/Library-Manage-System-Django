# Generated by Django 3.0.6 on 2020-06-03 21:54

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Book',
            fields=[
                ('BookID', models.AutoField(db_index=True, primary_key=True, serialize=False)),
                ('BName', models.CharField(max_length=40)),
                ('Publisher', models.CharField(max_length=40)),
                ('Author', models.CharField(max_length=30)),
                ('Content', models.TextField(blank=True, default='无', null=True)),
                ('Price', models.FloatField(default=30.0)),
                ('NumInLib', models.PositiveSmallIntegerField(default=0)),
                ('NumNow', models.PositiveSmallIntegerField(default=0)),
                ('Category', models.CharField(choices=[('思政类', '思政类'), ('哲学类', '哲学类'), ('社会科学类', '社会科学类'), ('军事类', '军事类'), ('经济类', '经济类'), ('文化科学类', '文化科学类'), ('语言文字类', '语言文字类'), ('文学类', '文学类'), ('艺术类', '艺术类'), ('体育类', '体育类'), ('历史地理类', '历史地理类'), ('自然科学总论类', '自然科学总论类'), ('数理化学类', '数理化学类'), ('天文地球科学类', '天文地球科学类'), ('生物科学理类', '生物科学理类'), ('医药类', '医药类'), ('农业科学类', '农业科学类'), ('工业技术类', '工业技术类'), ('交通运输类', '交通运输类'), ('航空航天类', '航空航天类'), ('环境科学类', '环境科学类'), ('计算机类', '计算机类'), ('未分类', '未分类')], default='未分类', max_length=30)),
                ('PubTime', models.DateField(default='1999-10-11')),
                ('ReadTimes', models.IntegerField(default=0)),
            ],
        ),
        migrations.CreateModel(
            name='BuyIn',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
            ],
        ),
        migrations.CreateModel(
            name='Fine',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('LimitDay', models.PositiveSmallIntegerField(db_index=True, unique=True)),
                ('FineMoney', models.PositiveSmallIntegerField(default=0)),
            ],
        ),
        migrations.CreateModel(
            name='Notice',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Title', models.CharField(max_length=40)),
                ('NTime', models.DateTimeField(auto_now_add=True)),
                ('Content', models.TextField()),
                ('ReadTimes', models.IntegerField(default=0)),
            ],
        ),
        migrations.CreateModel(
            name='ReaderClass',
            fields=[
                ('Class', models.CharField(db_index=True, max_length=10, primary_key=True, serialize=False)),
                ('Limited', models.PositiveSmallIntegerField(default=3)),
                ('Days', models.PositiveSmallIntegerField(default=30, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='User',
            fields=[
                ('AccountID', models.CharField(db_index=True, max_length=40, primary_key=True, serialize=False)),
                ('Password', models.CharField(max_length=40)),
                ('Type', models.CharField(choices=[('1', '管理员'), ('2', '读者')], default='读者', max_length=10)),
                ('Email', models.EmailField(max_length=254, unique=True)),
                ('Tel', models.CharField(max_length=20, unique=True)),
            ],
        ),
        migrations.CreateModel(
            name='Reader',
            fields=[
                ('ReaderID', models.CharField(db_index=True, max_length=30, primary_key=True, serialize=False)),
                ('Gender', models.CharField(choices=[('1', '男'), ('2', '女'), ('3', '保密')], default='保密', max_length=10)),
                ('Name', models.CharField(blank=True, max_length=30, null=True)),
                ('School', models.CharField(choices=[('1', '信息技术与科学学院'), ('2', '材料科学与工程学院'), ('3', '机电工程学院'), ('4', '化学工程学院'), ('5', '经济管理学院'), ('6', '化学学院'), ('7', '数理学院'), ('8', '文法学院'), ('9', '生命科学与技术学院'), ('10', '继续教育学院'), ('11', '马克思主义学院'), ('12', '国际教育学院'), ('13', '侯德榜工程师学院'), ('14', '巴黎居里工程师学院')], default='信息技术与科学学院', max_length=30)),
                ('Type', models.CharField(choices=[('1', '学生'), ('2', '教职工')], default='学生', max_length=10)),
                ('AccountID', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to='BuctLib.User')),
                ('Class', models.ForeignKey(default='A', on_delete=django.db.models.deletion.SET_DEFAULT, to='BuctLib.ReaderClass')),
            ],
        ),
        migrations.CreateModel(
            name='Message',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Title', models.CharField(max_length=255, verbose_name='消息标题')),
                ('Content', models.TextField()),
                ('MTime', models.DateTimeField(auto_now_add=True)),
                ('Status', models.CharField(choices=[('1', '已读'), ('2', '未读')], default='未读', max_length=20)),
                ('ReaderID', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='BuctLib.Reader')),
            ],
        ),
        migrations.CreateModel(
            name='Manager',
            fields=[
                ('ManagerID', models.CharField(db_index=True, max_length=30, primary_key=True, serialize=False)),
                ('Gender', models.CharField(choices=[('1', '男'), ('2', '女'), ('3', '保密')], default='保密', max_length=10)),
                ('Name', models.CharField(max_length=30, null=True)),
                ('AccountID', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to='BuctLib.User')),
            ],
        ),
        migrations.CreateModel(
            name='Borrow',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('BorrowTime', models.DateField(auto_now_add=True)),
                ('ReturnDay', models.DateField(auto_now_add=True)),
                ('RealreturnDay', models.DateField(default='2020-01-01')),
                ('isReBorrowed', models.BooleanField(default=False)),
                ('isLegal', models.NullBooleanField(default=True)),
                ('isDelete', models.BooleanField(default=False)),
                ('isReturned', models.BooleanField(default=False)),
                ('isAllowed', models.NullBooleanField()),
                ('BookID', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='BuctLib.Book')),
                ('ReaderID', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='BuctLib.Reader')),
            ],
        ),
        migrations.CreateModel(
            name='ApplyClass',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Message', models.TextField(default='')),
                ('Class', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='BuctLib.ReaderClass')),
                ('ReaderID', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='BuctLib.Reader')),
            ],
        ),
    ]
