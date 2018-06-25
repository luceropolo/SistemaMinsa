
package proyecto;

import java.sql.*;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import utils.DBconexion;


public class RegistrarFamilia extends javax.swing.JFrame {


    public RegistrarFamilia() {
        initComponents();
        
    }
    //crear un metodo vacio
   
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jTextField1 = new javax.swing.JTextField();
        txt_nombre = new javax.swing.JTextField();
        jLabel6 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        txt_apellido = new javax.swing.JTextField();
        jLabel8 = new javax.swing.JLabel();
        cmb_sexo = new javax.swing.JComboBox<>();
        txt_edad = new javax.swing.JTextField();
        jLabel9 = new javax.swing.JLabel();
        txt_dni = new javax.swing.JTextField();
        jLabel10 = new javax.swing.JLabel();
        txt_fecha = new javax.swing.JTextField();
        jLabel11 = new javax.swing.JLabel();
        cmb_parentesco = new javax.swing.JComboBox<>();
        jLabel12 = new javax.swing.JLabel();
        cmb_estado = new javax.swing.JComboBox<>();
        jLabel13 = new javax.swing.JLabel();
        cmb_grado = new javax.swing.JComboBox<>();
        jLabel14 = new javax.swing.JLabel();
        txt_ocupac = new javax.swing.JTextField();
        jLabel15 = new javax.swing.JLabel();
        cmb_condicion = new javax.swing.JComboBox<>();
        jLabel16 = new javax.swing.JLabel();
        cmb_famformacion = new javax.swing.JComboBox<>();
        jLabel17 = new javax.swing.JLabel();
        cmb_famexpancion = new javax.swing.JComboBox<>();
        jLabel18 = new javax.swing.JLabel();
        cmb_famdispercion = new javax.swing.JComboBox<>();
        jLabel19 = new javax.swing.JLabel();
        cmb_famcontraccion = new javax.swing.JComboBox<>();
        jLabel20 = new javax.swing.JLabel();
        cmb_primerhijo = new javax.swing.JComboBox<>();
        jLabel21 = new javax.swing.JLabel();
        cmb_precolar = new javax.swing.JComboBox<>();
        jLabel22 = new javax.swing.JLabel();
        cmb_escolar = new javax.swing.JComboBox<>();
        jLabel23 = new javax.swing.JLabel();
        cmb_adolecente = new javax.swing.JComboBox<>();
        jLabel24 = new javax.swing.JLabel();
        cmb_adulto = new javax.swing.JComboBox<>();
        btn_guardar = new javax.swing.JButton();
        btn_nuevomiembro = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jLabel1.setText("CARACTERISTICAS DE LOS MIEMBROS DE FAMILIA");

        jLabel2.setText("INSTRUMENTOS DE EVALUACION FAMILIAR");

        jLabel4.setText("ID DE LA FAMILIA");

        jLabel5.setText("NOMBRES: ");

        jTextField1.setEditable(false);

        jLabel6.setText("APELLIDO:");

        jLabel7.setText("EDAD:");

        jLabel8.setText("SEXO:");

        cmb_sexo.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Ninguno", "M", "F" }));

        jLabel9.setText("DNI:");

        jLabel10.setText("FECHA DE NACIMIENTO:");

        jLabel11.setText("PARENTESCO:");

        cmb_parentesco.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Ninguno", "Padre", "Madre", "Hija/o", "Hija/o Adoptiva/o", "Abuela/o", "Tío/a", "Nieto/a", "Padrastro", "Madrastra", "Sobrino/a", "Prima/o", "Bis-Abuelo/a", "Amiga/o", "Hermano/a", "Yerno", "Nuera" }));

        jLabel12.setText("ESTADO CIVIL:");

        cmb_estado.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Ninguno", "Soltero/a", "Conviviente", "Casado/a", "Separada/o", "Divorciado/a", "Viuda", "Otros" }));

        jLabel13.setText("GRADO DE INSTRUCCION:");

        cmb_grado.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Ninguno", "Sin Instruccion", "Inicial", "Primaria Incompleta", "Primaria Completa", "Secundaria Incompleta", "Secundaria Completa", "Superior Completo", "Superior Incompleto" }));

        jLabel14.setText("OCUPACION:");

        jLabel15.setText("CONDICION DE LA OCUPACION:");

        cmb_condicion.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Niguno", "Trabajador/a Estable", "Eventual", "Sin Ocupación", "Jubilado/a", "Estudiante" }));

        jLabel16.setText("FAMILIA EN FORMACION:");

        cmb_famformacion.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Ninguno", "Si", "No" }));

        jLabel17.setText("FAMILIA EN EXPANSION:");

        cmb_famexpancion.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Ninguno", "Si", "No" }));
        cmb_famexpancion.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cmb_famexpancionActionPerformed(evt);
            }
        });

        jLabel18.setText("FAMILIA EN DISPERSION:");

        cmb_famdispercion.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Ninguno", "Si", "No" }));

        jLabel19.setText("FAMILIA EN CONTRACCION:");

        cmb_famcontraccion.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Ninguno", "Si", "No" }));
        cmb_famcontraccion.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cmb_famcontraccionActionPerformed(evt);
            }
        });

        jLabel20.setText("CON NACIMIENTO DEL PRIMER HIJO:");

        cmb_primerhijo.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Ninguno", "Si", "No" }));

        jLabel21.setText("CON HIJO EN EDAD PRE ESCOLAR:");

        cmb_precolar.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Ninguno", "Si", "No" }));

        jLabel22.setText("CON HIJO EN EDAD ESCOLAR:");

        cmb_escolar.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Ninguno", "Si", "No" }));

        jLabel23.setText("CON HIJO ADOLECENTE:");

        cmb_adolecente.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Ninguno", "Si", "No" }));

        jLabel24.setText("CON HIJO EN EDAD ADULTA:");

        cmb_adulto.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Ninguno", "Si", "No" }));

        btn_guardar.setText("GUARDAR");
        btn_guardar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_guardarActionPerformed(evt);
            }
        });

        btn_nuevomiembro.setText("SALIR");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(19, 19, 19)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(cmb_estado, javax.swing.GroupLayout.PREFERRED_SIZE, 173, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(18, 18, 18)
                                .addComponent(jLabel13)
                                .addGap(18, 18, 18)
                                .addComponent(cmb_grado, javax.swing.GroupLayout.PREFERRED_SIZE, 187, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addComponent(txt_ocupac, javax.swing.GroupLayout.PREFERRED_SIZE, 417, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addContainerGap())
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addGap(89, 89, 89)
                                .addComponent(jLabel1))
                            .addGroup(layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jLabel20)
                                    .addComponent(jLabel18)
                                    .addComponent(jLabel16)
                                    .addComponent(jLabel21))
                                .addGap(18, 18, 18)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(cmb_famformacion, javax.swing.GroupLayout.PREFERRED_SIZE, 70, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(cmb_famdispercion, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 70, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(cmb_primerhijo, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 70, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(cmb_precolar, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 70, javax.swing.GroupLayout.PREFERRED_SIZE)))
                            .addGroup(layout.createSequentialGroup()
                                .addGap(200, 200, 200)
                                .addComponent(jLabel2))
                            .addGroup(layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                                    .addGroup(layout.createSequentialGroup()
                                        .addComponent(jLabel23)
                                        .addGap(79, 79, 79)
                                        .addComponent(cmb_adolecente, javax.swing.GroupLayout.PREFERRED_SIZE, 82, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addComponent(btn_guardar, javax.swing.GroupLayout.Alignment.LEADING))
                                .addGap(31, 31, 31)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                    .addGroup(layout.createSequentialGroup()
                                        .addComponent(jLabel24)
                                        .addGap(18, 18, 18)
                                        .addComponent(cmb_adulto, 0, 71, Short.MAX_VALUE))
                                    .addGroup(layout.createSequentialGroup()
                                        .addComponent(jLabel22)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                        .addComponent(cmb_escolar, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                                    .addGroup(layout.createSequentialGroup()
                                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                            .addComponent(jLabel19)
                                            .addComponent(jLabel17))
                                        .addGap(18, 18, 18)
                                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                            .addComponent(cmb_famexpancion, 0, 73, Short.MAX_VALUE)
                                            .addComponent(cmb_famcontraccion, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)))
                                    .addComponent(btn_nuevomiembro))))
                        .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))))
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jLabel15)
                        .addGap(31, 31, 31)
                        .addComponent(cmb_condicion, javax.swing.GroupLayout.PREFERRED_SIZE, 181, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jLabel4)
                        .addGap(18, 18, 18)
                        .addComponent(jTextField1, javax.swing.GroupLayout.PREFERRED_SIZE, 112, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jLabel5)
                                    .addComponent(jLabel7, javax.swing.GroupLayout.PREFERRED_SIZE, 44, javax.swing.GroupLayout.PREFERRED_SIZE))
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                                    .addComponent(txt_nombre, javax.swing.GroupLayout.PREFERRED_SIZE, 198, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addGroup(layout.createSequentialGroup()
                                        .addComponent(txt_edad, javax.swing.GroupLayout.PREFERRED_SIZE, 50, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addGap(18, 18, 18)
                                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                            .addGroup(layout.createSequentialGroup()
                                                .addGap(0, 7, Short.MAX_VALUE)
                                                .addComponent(txt_fecha, javax.swing.GroupLayout.PREFERRED_SIZE, 130, javax.swing.GroupLayout.PREFERRED_SIZE))
                                            .addGroup(layout.createSequentialGroup()
                                                .addComponent(jLabel8)
                                                .addGap(18, 18, 18)
                                                .addComponent(cmb_sexo, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))))))
                            .addComponent(jLabel10))
                        .addGap(18, 18, 18)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jLabel11)
                                .addGap(18, 18, 18)
                                .addComponent(cmb_parentesco, javax.swing.GroupLayout.PREFERRED_SIZE, 139, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(115, 115, 115))
                            .addGroup(layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                                    .addComponent(jLabel6)
                                    .addComponent(jLabel9))
                                .addGap(18, 18, 18)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(txt_dni, javax.swing.GroupLayout.PREFERRED_SIZE, 157, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(txt_apellido, javax.swing.GroupLayout.DEFAULT_SIZE, 279, Short.MAX_VALUE)))))
                    .addComponent(jLabel12)
                    .addComponent(jLabel14))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(15, 15, 15)
                .addComponent(jLabel1)
                .addGap(24, 24, 24)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel4)
                    .addComponent(jTextField1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(20, 20, 20)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel5)
                    .addComponent(txt_nombre, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel6)
                    .addComponent(txt_apellido, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel7)
                    .addComponent(jLabel8)
                    .addComponent(cmb_sexo, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txt_edad, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel9)
                    .addComponent(txt_dni, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel10)
                    .addComponent(txt_fecha, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel11)
                    .addComponent(cmb_parentesco, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel12)
                    .addComponent(cmb_estado, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel13)
                    .addComponent(cmb_grado, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel14)
                    .addComponent(txt_ocupac, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel15)
                    .addComponent(cmb_condicion, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(20, 20, 20)
                .addComponent(jLabel2)
                .addGap(24, 24, 24)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel16)
                            .addComponent(cmb_famformacion, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(20, 20, 20)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel18)
                            .addComponent(cmb_famdispercion, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(18, 18, 18)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel20)
                            .addComponent(cmb_primerhijo, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(18, 18, 18)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel21)
                            .addComponent(cmb_precolar, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(18, 18, 18)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel23)
                            .addComponent(cmb_adolecente, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(btn_guardar))
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel17)
                            .addComponent(cmb_famexpancion, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(20, 20, 20)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel19)
                            .addComponent(cmb_famcontraccion, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(56, 56, 56)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel22)
                            .addComponent(cmb_escolar, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(18, 18, 18)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel24)
                            .addComponent(cmb_adulto, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(18, 18, 18)
                        .addComponent(btn_nuevomiembro)))
                .addContainerGap(12, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btn_guardarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_guardarActionPerformed
        
        DBconexion conex = new DBconexion("localhost", "minsa", "root", "");
    //JOptionPane.showMessageDialog(null,nom+" "+ape+" "+dni+""+fech+""+edd+""+sex+""+part+""+stdo+""+grad+""+ocupa+""+condocup);
    String sqla="";
    String sqlb="";
    String nom=txt_nombre.getText();
    String ape=txt_apellido.getText();
    int edd=Integer.parseInt(txt_edad.getText());
    String sex=(String) cmb_sexo.getSelectedItem();
    String dni=txt_dni.getText();
    String fech=txt_fecha.getText();
    String parentesko=(String) cmb_parentesco.getSelectedItem();
    String estad =(String)cmb_estado.getSelectedItem();
    String grdo=(String)cmb_grado.getSelectedItem();
    String ocupacn=txt_ocupac.getText();
    String condocupacn=(String)cmb_condicion.getSelectedItem();
    
//INSTRUMENTOS DE EVALUACION FAMILIAR
    int id=1;
    String form=(String)cmb_famformacion.getSelectedItem();
    String disp=(String)cmb_famdispercion.getSelectedItem();
    String hijo=(String)cmb_primerhijo.getSelectedItem();
    String preescolar=(String)cmb_precolar.getSelectedItem();
    String adole=(String)cmb_adolecente.getSelectedItem();
    String expancin=(String)cmb_famexpancion.getSelectedItem();
    String contraccn=(String)cmb_famcontraccion.getSelectedItem();
    String escolar=(String)cmb_escolar.getSelectedItem();
    String adulto=(String)cmb_adulto.getSelectedItem();
    
    sqla="INSERT INTO miembros (Nombres,Apellidos,Edad,Sexo,DNI_carnet,Fecha_de_nacimiento,Parentesco,Estado_civil,Grado,Ocupacion,Condicion_ocupacion) VALUES (?,?,?,?,?,?,?,?,?,?,?)";
    try {
            Connection cm =conex.conectar();
            PreparedStatement psd=cm.prepareStatement(sqla);  
            psd.setString(1,nom);
            psd.setString(2,ape);
            psd.setInt(3, edd);
            psd.setString(4,sex);
            psd.setString(5,dni);
            psd.setString(6,fech);
            psd.setString(7,parentesko);
            psd.setString(8,estad);
            psd.setString(9,grdo);
            psd.setString(10,ocupacn);
            psd.setString(11,condocupacn);        
            int n=psd.executeUpdate();
            if(n>0){
                JOptionPane.showMessageDialog(null,"Registro de miembros correcto");
            }
    } catch (SQLException ex) {
            Logger.getLogger(Sesion.class.getName()).log(Level.SEVERE, null, ex);
        }
 
    sqlb="INSERT INTO ciclo_familiar (ID_familia,F_formacion,Nacimiento_primer,Hijo_preescolar,Hijo_adolescente,Hijo_adulto,F_dispersion,F_contraccion,F_expancion,Hijo_escolar) VALUES(?,?,?,?,?,?,?,?,?,?)";
        try {
            Connection cc =conex.conectar();
            PreparedStatement ps=cc.prepareStatement(sqlb);
            ps.setInt(1,id);
            ps.setString(2,form);
            ps.setString(3,hijo);
            ps.setString(4,preescolar);
            ps.setString(5,adole);
            ps.setString(6,adulto);
            ps.setString(7,disp);
            ps.setString(8,contraccn);
            ps.setString(9,expancin);
            ps.setString(10,escolar);
            int n=ps.executeUpdate();
            if(n>0){
                JOptionPane.showMessageDialog(null,"Registro de ciclo familiar correcto");
            }
        } catch (Exception ex) {
             Logger.getLogger(Sesion.class.getName()).log(Level.SEVERE, null, ex);
        }
        if(edd<=11){
              etapa_nino en=new etapa_nino();
              en.setVisible(true);
              dispose();
        }
        else if(edd<17){
              etapa_adolescente ea= new etapa_adolescente();
              ea.setVisible(true);
              dispose();
        }
        else if(edd<29){
              etapa_joven ej= new etapa_joven();
              ej.setVisible(true);
              dispose();
        }
        else if(edd<59){
              etapa_adulto ead= new etapa_adulto();
              ead.setVisible(true);
              dispose();
        }
        else {
             etapa_adulto_mayor edm= new etapa_adulto_mayor();
              edm.setVisible(true);
              dispose();
        }
        
        
    }//GEN-LAST:event_btn_guardarActionPerformed

    private void cmb_famcontraccionActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cmb_famcontraccionActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_cmb_famcontraccionActionPerformed

    private void cmb_famexpancionActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cmb_famexpancionActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_cmb_famexpancionActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {

        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new RegistrarFamilia().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btn_guardar;
    private javax.swing.JButton btn_nuevomiembro;
    private javax.swing.JComboBox<String> cmb_adolecente;
    private javax.swing.JComboBox<String> cmb_adulto;
    private javax.swing.JComboBox<String> cmb_condicion;
    private javax.swing.JComboBox<String> cmb_escolar;
    private javax.swing.JComboBox<String> cmb_estado;
    private javax.swing.JComboBox<String> cmb_famcontraccion;
    private javax.swing.JComboBox<String> cmb_famdispercion;
    private javax.swing.JComboBox<String> cmb_famexpancion;
    private javax.swing.JComboBox<String> cmb_famformacion;
    private javax.swing.JComboBox<String> cmb_grado;
    private javax.swing.JComboBox<String> cmb_parentesco;
    private javax.swing.JComboBox<String> cmb_precolar;
    private javax.swing.JComboBox<String> cmb_primerhijo;
    private javax.swing.JComboBox<String> cmb_sexo;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel14;
    private javax.swing.JLabel jLabel15;
    private javax.swing.JLabel jLabel16;
    private javax.swing.JLabel jLabel17;
    private javax.swing.JLabel jLabel18;
    private javax.swing.JLabel jLabel19;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel20;
    private javax.swing.JLabel jLabel21;
    private javax.swing.JLabel jLabel22;
    private javax.swing.JLabel jLabel23;
    private javax.swing.JLabel jLabel24;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JTextField jTextField1;
    private javax.swing.JTextField txt_apellido;
    private javax.swing.JTextField txt_dni;
    private javax.swing.JTextField txt_edad;
    private javax.swing.JTextField txt_fecha;
    private javax.swing.JTextField txt_nombre;
    private javax.swing.JTextField txt_ocupac;
    // End of variables declaration//GEN-END:variables
}
