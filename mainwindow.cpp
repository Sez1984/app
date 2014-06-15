#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "module/module.h"
#include <QString>
#include "random"

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);

    ui->comboBox->addItem("Функция случайное число");
    ui->comboBox->addItem("Функция случайная матрица");
    for (int k=1; k<50; k++)
    {
        ui->comboBox_2->addItem(QString::number(k));
        ui->comboBox_3->addItem(QString::number(k));
    }
}

MainWindow::~MainWindow()
{
    delete ui;


}

void MainWindow::on_pushButton_clicked()
{

   if (ui->comboBox->currentText() == "Функция случайное число")
   {
   float n =  Module::getRandom();
   ui->label_2->setText("Случайное число = " + QString::number(n));
   }

   if (ui->comboBox->currentText() == "Функция случайная матрица")
   {

    int w = ui->comboBox_2->currentText().toInt();
    int h = ui->comboBox_3->currentText().toInt();
    float** m;



    m  = Module::getRandomMatrix(w,h);

    ui->tableWidget->setRowCount(w);
    ui->tableWidget->setColumnCount(h);


   for(int i=0; i<w; i++)
     for(int j=0; j<h; j++)
     {
        ui->tableWidget->setItem(i, j, new QTableWidgetItem(QString::number(m[i][j])));
     }
   }

}

void MainWindow::on_comboBox_currentTextChanged(const QString &arg1)
{
    if (ui->comboBox->currentText() == "Функция случайная матрица")
    {
    ui->comboBox_2->setEnabled(true);
    ui->comboBox_3->setEnabled(true);
    }
    if (ui->comboBox->currentText() == "Функция случайное число")
    {
    ui->comboBox_2->setEnabled(false);
    ui->comboBox_3->setEnabled(false);
    }
}
