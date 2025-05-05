/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package desafiorestaurante;


import java.util.ArrayList;

/**
 *
 * @author Marco
 */
public class Pedido {
    private int id;
    private Cliente cliente;
    private Mesa mesa;
    private ArrayList<Plato> platos;

    
    public Pedido(){}

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the cliente
     */
    public Cliente getCliente() {
        return cliente;
    }

    /**
     * @param cliente the cliente to set
     */
    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    /**
     * @return the mesa
     */
    public Mesa getMesa() {
        return mesa;
    }

    /**
     * @param mesa the mesa to set
     */
    public void setMesa(Mesa mesa) {
        this.mesa = mesa;
    }

    /**
     * @return the platos
     */
    public ArrayList<Plato> getPlatos() {
        return platos;
    }

    /**
     * @param platos the platos to set
     */
    public void setPlatos(ArrayList<Plato> platos) {
        this.platos = platos;
    }



    

    
}
