#pragma once 
#include <QtGui/QMainWindow>

class mainwindow : public QMainWindow
{
	Q_OBJECT

public:
	mainwindow(QWidget *parent = 0, Qt::WFlags flags = 0);
	~mainwindow();

};

