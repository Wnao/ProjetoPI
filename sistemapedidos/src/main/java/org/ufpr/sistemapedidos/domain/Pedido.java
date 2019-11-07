package org.ufpr.sistemapedidos.domain;


import java.io.Serializable;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.Objects;

import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;

/**
 * Created by luancomputacao on 24/02/18.
 */
@Entity
@Table(name = "pedido")
public class Pedido implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id", length = 11)
    private Integer id;

    @Column(name = "data_pedido")
    @Temporal(TemporalType.DATE)
    private Date dataPedido;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "pedido")
    @JsonBackReference
    private List<ItemDoPedido> itemDoPedidoCollection;

    @JoinColumn(name = "id_cliente", referencedColumnName = "id", updatable = false, nullable = false)
    @JsonManagedReference
    @ManyToOne
    private Cliente cliente;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getDataPedido() {
        return dataPedido;
    }

    public void setDataPedido(Date dataPedido) {
        this.dataPedido = dataPedido;
    }

    public List<ItemDoPedido> getItemDoPedidoCollection() {
        return itemDoPedidoCollection;
    }

    public void setItemDoPedidoCollection(List<ItemDoPedido> collection) {
        this.itemDoPedidoCollection = collection;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Pedido)) return false;
        Pedido pedido = (Pedido) o;
        return Objects.equals(getId(), pedido.getId()) &&
                Objects.equals(getDataPedido(), pedido.getDataPedido()) &&
                Objects.equals(getCliente(), pedido.getCliente());
    }

    @Override
    public int hashCode() {

        return Objects.hash(getId(), getDataPedido(), getCliente());
    }

    @Override
    public String toString() {
        return "Pedido{" +
                "id=" + id +
                ", dataPedido=" + dataPedido +
                ", itemDoPedidoCollection=" + itemDoPedidoCollection +
                ", cliente=" + cliente +
                '}';
    }
}
