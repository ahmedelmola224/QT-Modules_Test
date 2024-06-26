#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QTimer>
#include <QDateTime>
#include "popNotify.h"
#include "Prayer.h"
#include <QObject>
#include <QMediaPlayer>
#include "Bluetooth.h"
#include "Weather.h"
#include <QPropertyAnimation>
QT_BEGIN_NAMESPACE
namespace Ui {
class MainWindow;
}
QT_END_NAMESPACE

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();
    Ui::MainWindow *ui;
    void Back_Home();




private:
         // Ui::MainWindow *ui;

    MainWindow *mainWindow;
    QMediaPlayer *player;
    QPropertyAnimation *fadeInAnimation;
    QPropertyAnimation *fadeOutAnimation;

private slots:


    void Back_Home_Slot();
    void showTime();

    void on_Prayer_Button_clicked();

    void on_Camera_Button_clicked();

    void on_Weather_Button_clicked();

    void on_Settings_Button_clicked();

    void on_Bluetooth_Button_clicked();

    void on_Info_Button_clicked();

    void on_Music_Button_clicked();
    void on_Video_Button_clicked();

    void on_Map_Button_clicked();
    void on_Gauge_Cluster_Button_clicked();
};
#endif // MAINWINDOW_H
