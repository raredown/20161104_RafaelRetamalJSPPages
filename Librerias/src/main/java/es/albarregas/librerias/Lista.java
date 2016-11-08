/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package es.albarregas.librerias;

import beans.*;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author rafa
 */
public class Lista implements java.io.Serializable {

   private List<String> list = new ArrayList<String>();

    public Lista() {
        list.add("Andrea");
        list.add("Amaya");
        list.add("Julio");
        list.add("Pepe");
        list.add("Rafa");
    }

    public List<String> getList() {
        return list;
    }

    public void setList(List<String> list) {
        this.list = list;
    }

}
